# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'depralyzer/version'

Gem::Specification.new do |gem|
  gem.name          = 'depralyzer'
  gem.version       = Depralyzer::VERSION
  gem.authors       = ['Timothy Chambers']
  gem.email         = ['tim@hint.io']
  gem.licenses      = ['MIT']
  gem.description   = 'depralyzer analyzes and summarizes your deprecations.'
  gem.summary       = 'depralyzer analyzes and summarizes your deprecations.'
  gem.homepage      = 'https://github.com/hintmedia/depralyzer'
  gem.files         = Dir['{bin,lib}/**/*']
  gem.executables   = gem.files.grep(%r{^bin/}).map { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']
end
