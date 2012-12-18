# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruby-jade/version'

Gem::Specification.new do |gem|
  gem.name          = "ruby-jade"
  gem.version       = Ruby::Jade::VERSION
  gem.authors       = ["Ryan Fitzgerald"]
  gem.email         = ["rfitz@academia.edu"]
  gem.description   = %q{Ruby wrapper for the Jade templating language}
  gem.summary       = %q{Ruby wrapper for the Jade templating language}
  gem.homepage      = "https://github.com/academia-edu/ruby-jade"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'execjs'
  gem.add_development_dependency 'pry'
end
