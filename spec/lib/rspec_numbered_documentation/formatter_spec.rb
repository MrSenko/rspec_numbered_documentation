require 'ostruct'
require 'spec_helper'
require 'rspec_numbered_documentation/formatter'

RSpec.describe RspecNumberedDocumentation::Formatter do
  subject(:formatter) { described_class.new(output) }
  let(:output) { StringIO.new }

  describe '#example_started' do
    subject(:output_string) { output.string }

    let(:notification) do
      OpenStruct.new(
        example: OpenStruct.new(
          description: 'An test',
          execution_result: OpenStruct.new(
            pending_message: 'skipped'
          )
        )
      )
    end

    # rubocop:disable RSpec/ExampleLength
    it 'prefixes with line numbers' do
      formatter.example_started(notification)
      formatter.example_passed(notification)
      is_expected.to include('1:')
      is_expected.to include(notification.example.description) # .once

      formatter.example_started(notification)
      formatter.example_failed(notification)
      is_expected.to include('2:')
      is_expected.to include(notification.example.description) # .twice

      formatter.example_started(notification)
      formatter.example_pending(notification)
      is_expected.to include('3:')
      is_expected.to include(notification.example.description) # .three_times
    end
  end
end
