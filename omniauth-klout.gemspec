# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth-klout/version'

Gem::Specification.new do |gem|
  gem.name          = "omniauth-klout"
  gem.version       = Omniauth::Klout::VERSION
  gem.authors       = ["Alex Heeton"]
  gem.email         = ["Alex@Heeton.me"]
  gem.description   = %q{An OmniAuth strategy for Klout}
  gem.summary       = %q{An OmniAuth strategy for Klout}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'omniauth', '~> 1.0'
  gem.add_development_dependency 'rspec', '~> 2.7'
  gem.add_development_dependency 'rack-test'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'webmock'

end
