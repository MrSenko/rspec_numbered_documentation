# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rspec_numbered_documentation/version'

Gem::Specification.new do |spec|
  spec.name          = 'rspec_numbered_documentation'
  spec.version       = RspecNumberedDocumentation::VERSION
  spec.authors       = ['Alexander Todorov']
  spec.email         = ['atodorov@MrSenko.com']
  spec.homepage      = 'https://github.com/MrSenko/rspec_numbered_documentation'
  spec.license       = 'MIT'
  spec.summary = 'Prefix the Rspec documentation formatter with line numbers'
  spec.description = <<-DESCRIPTION
Rspec formatter which prefixes the documentation formatter with line numbers indicating
the order of test execution. Useful when reading large log files and debugging flaky tests!
  DESCRIPTION
  spec.files = `git ls-files -z`.split("\x0").reject { |f|
    f.match(%r{^(test|spec|features)/})
  }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'rubocop-rspec'
  spec.add_development_dependency 'rspec-lint'
end
