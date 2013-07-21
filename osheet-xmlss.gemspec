# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'osheet/xmlss/version'

Gem::Specification.new do |gem|
  gem.name        = "osheet-xmlss"
  gem.version     = Osheet::Xmlss::VERSION
  gem.authors     = ["Kelly Redding"]
  gem.email       = ["kelly@kellyredding.com"]
  gem.description = %q{An Osheet writer (https://github.com/kellyredding/osheet) for the XMLSS format (https://github.com/kellyredding/xmlss)}
  gem.summary     = %q{An Osheet writer (https://github.com/kellyredding/osheet) for the XMLSS format (https://github.com/kellyredding/xmlss)}
  gem.homepage    = "http://github.com/kellyredding/osheet-xmlss"
  gem.license     = 'MIT'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency("assert", ["~> 2.0"])

  gem.add_dependency("osheet", ["~> 1.0"])
  gem.add_dependency("xmlss",  ["~> 1.0"])

end
