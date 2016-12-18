require 'rspec/core/formatters/documentation_formatter'

module RspecNumberedDocumentation
  # Rspec formatter which prefixes the documentation formatter
  # with line numbers indicating the order of test execution.
  class Formatter < RSpec::Core::Formatters::DocumentationFormatter
    RSpec::Core::Formatters.register self,
                                     :example_started

    def initialize(output)
      super(output)
      @example_number = 0
    end

    def example_started(_notification)
      @example_number += 1
      output.print "#{@example_number}:    "
    end
  end
end
