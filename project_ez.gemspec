# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'project_ez/version'

Gem::Specification.new do |spec|
  spec.name          = "project_ez"
  spec.version       = ProjectEz::VERSION
  spec.authors       = ["In Rob Life"]
  spec.email         = ["almost.work.but.not@gmail.com"]

  spec.summary       = %q{Test Project with a test}
  #spec.description   = %q{TODO: delete this line since you're in a hurry.}
  spec.homepage      = "https://github.com/In Rob Life/project_ez"
  # spec.license       = "MIT" # uncomment this line if MIT is the best license for your situation

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", ">= 0.0.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
