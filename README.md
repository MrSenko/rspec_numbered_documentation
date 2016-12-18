# RSpec Numbered Documentation

[![Build Status](https://travis-ci.org/MrSenko/rspec_numbered_documentation.svg?branch=master)](https://travis-ci.org/MrSenko/rspec_numbered_documentation)

Rspec formatter which prefixes the documentation formatter with line numbers
indicating the order of test execution. This is useful when reading large
log files and debugging flaky tests.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rspec_numbered_documentation'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rspec_numbered_documentation

## Usage

```bash
bundle exec rspec -f RspecNumberedDocumentation::Formatter
```

## Changelog

* 0.2.1 (Dec 18th 2016)
    - first release

## Development

After checking out the repo, run `bin/setup` to install dependencies.
You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.
To release a new version, update the version number in `version.rb`, and then run
`bundle exec rake release`, which will create a git tag for the version,
push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/MrSenko/rspec_numbered_documentation.

