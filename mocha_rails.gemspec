$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "mocha_rails/version"

Gem::Specification.new do |s|
  s.name        = "multi_mocha_rails"
  s.version     = MochaRails::VERSION
  s.authors     = ["Matias Niemela"]
  s.email       = ["matias@yearofmoo.com"]
  s.homepage    = "https://github.com/matsko/mocha_rails"
  s.summary     = "Fork of mocha_rails with support for multiple suite files"
  s.description = "Fork of mocha_rails with support for multiple suite files"

  s.files = Dir["{app,config,lib,vendor}/**/*"] + ["MIT-LICENSE", "Rakefile", "Readme.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 3.1.0"
end
