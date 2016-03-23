# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mrkt/version'

Gem::Specification.new do |spec|
  spec.name          = 'mrkt'
  spec.version       = Mrkt::VERSION
  spec.authors       = ['KARASZI István', 'Jacques Lemieux']
  spec.email         = ['github@spam.raszi.hu', 'jalemieux@gmail.com']
  spec.summary       = 'Marketo REST API Facade'
  spec.description   = 'This gem helps you to use the Marketo REST API'
  spec.homepage      = 'https://github.com/raszi/mrkt'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($RS)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = %w(lib)

  spec.required_ruby_version = '~> 2.0'

  spec.add_dependency 'faraday_middleware', '>= 0.10.0'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.2'
  spec.add_development_dependency 'webmock', '~> 1.21.0'
  spec.add_development_dependency 'simplecov', '~> 0.10.0'
  spec.add_development_dependency 'pry-byebug', '~> 3.1.0'
  spec.add_development_dependency 'codeclimate-test-reporter', '~> 0.4.7'
  spec.add_development_dependency 'rubocop', '~> 0.32.1'
end
