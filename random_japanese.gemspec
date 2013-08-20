# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'random_japanese/version'

Gem::Specification.new do |spec|
  spec.name          = "random_japanese"
  spec.version       = RandomJapanese::VERSION
  spec.authors       = ["tcnksm"]
  spec.email         = ["nsd22843@gmail.com"]
  spec.description   = %q{Generate Japanese ramdomly.}
  spec.summary       = %q{TODO: Write a gem summary}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.has_rdoc      = false

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", ">= 2.13"
  spec.add_development_dependency "guard-rspec"
  
end
