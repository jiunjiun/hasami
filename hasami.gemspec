# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hasami/settings'

Gem::Specification.new do |spec|
  spec.name          = "hasami"
  spec.version       = HasamiSettings::VERSION
  spec.authors       = ["jiunjiun"]
  spec.email         = ["quietmes@gmail.com"]

  spec.summary       = %q{Hasami}
  spec.description   = %q{This API helper get Taoyuan airport flight info}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_dependency('curb')
  spec.add_dependency('iconv')
  spec.add_dependency('virtus')
end
