# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'burocracias/version'

Gem::Specification.new do |gem|
  gem.name          = "burocracias"
  gem.version       = Burocracias::VERSION
  gem.authors       = ["Neil Carvalho"]
  gem.email         = ["me@neil.pro"]
  gem.description   = %q{Métodos para facilitar o tratamento de CEP, CPF, CNPJ e outras burocracias do nosso Brasil}
  gem.summary       = %q{Burocracias do nosso Brasil}
  gem.homepage      = ""

  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'rake'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
