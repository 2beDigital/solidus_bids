# -*- encoding: utf-8 -*-

$:.push File.expand_path("../lib", __FILE__)
require 'solidus_bids/version'

Gem::Specification.new do |s|
  s.name        = 'solidus_bids'
  s.version     = SolidusBids::VERSION
  s.authors     = 'Noel Díaz'
  s.email       = 'noel@2bedigital.com'
  s.homepage    = 'https://www.2bedigital.com'
  s.license     = 'BSD-3-Clause'
  s.summary     = 'Solidus Bids'
  s.description = 'Create bids for retailer products'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.bindir        = 'bin'
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'solidus_core', '~> 2.1'
  s.add_dependency 'solidus_retail_only'  

  s.add_development_dependency 'byebug'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rubocop', '~> 0.71'
  s.add_development_dependency 'rubocop-rails'
  s.add_development_dependency 'rubocop-rspec'
  s.add_development_dependency 'relaxed-rubocop'
  s.add_development_dependency 'gem-release'
  # Temporary hack until https://github.com/wycats/thor/issues/234 is fixed
  s.add_dependency 'thor', '~> 0.14'
end
