# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ffavicon/version'

Gem::Specification.new do |spec|
  spec.name          = "ffavicon"
  spec.version       = FFavicon::VERSION
  spec.authors       = ["telray"]
  spec.email         = ["telrayru@gmail.com"]

  spec.summary       = %q{Generate the favicon for all major browsers and platforms}
  spec.description   = %q{Generate the favicon for all major browsers and platforms}
  spec.homepage      = "https://github.com/telray/ffavicon"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency("favicon_maker", "= 1.3")
end
