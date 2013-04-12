# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sweet_routing/version'

Gem::Specification.new do |spec|
  spec.name          = "sweet_routing"
  spec.version       = SweetRouting::VERSION
  spec.authors       = ["Kristian Mandrup"]
  spec.email         = ["kmandrup@gmail.com"]
  spec.description   = %q{Sweet routing macros for Rails}
  spec.summary       = %q{Clean up your routing with beautiful macros}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
