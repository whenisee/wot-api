# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wot/api/version'

Gem::Specification.new do |spec|
  spec.name          = "wot-api"
  spec.version       = Wot::Api::VERSION
  spec.authors       = ["Groza Sergiu"]
  spec.email         = ["info@code-panic.com"]
  spec.summary       = %q{Ruby World of Tanks API v2.0}
  spec.description   = %q{A simple ruby library that allows to interface with World of Tanks API v2.0!}
  spec.homepage      = "http://wot.code-panic.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.3"
  spec.add_development_dependency "rspec", "~> 3.1"
  spec.add_development_dependency "json","~> 1.8"
  spec.add_development_dependency "rest-client","~> 1.7"
end
