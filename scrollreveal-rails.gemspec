# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "scrollreveal/version"

Gem::Specification.new do |s|
  s.name        = "scrollreveal-rails"
  s.version     = Scrollreveal::VERSION
  s.authors     = ["Ankit Gupta"," Ekta Verma"]
  s.date        = '2014-02-23'
  s.email       = ["ankit.gupta8898@gmail.com","eku4evr@gmail.com"]
  s.summary     = %q{Ruby Wrapper on top of ScrollReveal.js}
  s.description = %q{Gem that includes ScrollReveal (A small library to create and maintain how elements fade in,triggered when they enter the viewport.)}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")

  s.require_paths = ["lib"]
  s.licenses    = ['MIT']
  s.homepage    = 'https://github.com/gemathon-rockets/scrollreveal-rails'
  s.add_dependency "railties", ">= 3.1"
  s.add_development_dependency "bundler", "~> 1.0"
  s.add_development_dependency "rails",   ">= 3.1"
  s.add_development_dependency 'rake'

end
