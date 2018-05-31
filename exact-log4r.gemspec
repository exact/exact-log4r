require File.expand_path('../lib/log4r/version', __FILE__)

Gem::Specification.new do |spec|
  spec.name          = "exact-log4r"
  spec.version       = Log4r::VERSION
  spec.authors       = ["Donncha Redmond"]
  spec.email         = ["github@mail.donncha.com"]

  spec.summary       = "Logging gem"
  spec.description   = "Logging gem"
  spec.homepage      = ""

  spec.files         = Dir['README.md', 'lib/**/*']
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "activesupport"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
