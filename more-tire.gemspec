# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "more-tire/version"

Gem::Specification.new do |s|
  s.name        = "more-tire"
  s.version     = Tire::More::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Adam LaFave"]
  s.email       = ["lafave.adam@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Additions to the Tire gem}

  s.rubyforge_project = "tire-contrib"

  s.add_dependency "tire"

  s.add_development_dependency "rspec"

  s.extra_rdoc_files  = [ "README.markdown", "MIT-LICENSE" ]
  s.rdoc_options      = [ "--charset=UTF-8" ]

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end