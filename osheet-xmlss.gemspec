# -*- encoding: utf-8 -*-
require File.expand_path('../lib/osheet/xmlss/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name        = "osheet-xmlss"
  gem.version     = Osheet::Xmlss::VERSION
  gem.description = %q{An Osheet writer (https://github.com/kellyredding/osheet) for the XMLSS format (https://github.com/kellyredding/xmlss)}
  gem.summary     = %q{An Osheet writer (https://github.com/kellyredding/osheet) for the XMLSS format (https://github.com/kellyredding/xmlss)}

  gem.authors     = ["Kelly Redding"]
  gem.email       = ["kelly@kellyredding.com"]
  gem.homepage    = "http://github.com/kellyredding/osheet-xmlss"

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.require_paths = ["lib"]

  gem.add_development_dependency("assert")

  gem.add_dependency("osheet", ["~> 1.0.0.rc.3"])
  gem.add_dependency("xmlss",  ["~> 1.0.0.rc.3"])

end
