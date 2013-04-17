# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ubuntu_amis/version'

Gem::Specification.new do |spec|
  spec.name          = "ubuntu_amis"
  spec.version       = UbuntuAmis::VERSION
  spec.authors       = ["Guillermo A\314\201lvarez"]
  spec.email         = ["guillermo@cientifico.net"]
  spec.description   = %q{Ubuntu Ami list}
  spec.summary       = %q{Return a table with all the oficial ubuntu amis}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "json"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest"
end
