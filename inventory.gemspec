# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'inventory/version'

Gem::Specification.new do |gem|
  gem.name          = "inventory"
  gem.version       = Inventory::VERSION
  gem.authors       = ["Johnny Graber"]
  gem.email         = ["jg@jgraber.ch"]
  gem.description   = "A tool to create an inventory of a storage medium"
  gem.summary       = "Inventory is a first step to get order in a chaotic collection of storage medias."
  gem.homepage      = "https://github.com/jgraber/inventory.cli"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.add_development_dependency('rdoc')
  gem.add_development_dependency('aruba')
  gem.add_development_dependency('rake', '~> 0.9.2')
  gem.add_dependency('methadone', '~> 1.3.1')
end
