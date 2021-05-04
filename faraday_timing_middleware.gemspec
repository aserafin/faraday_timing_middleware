# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'faraday_timing_middleware/version'

Gem::Specification.new do |spec|
  spec.name          = 'faraday_timing_middleware'
  spec.version       = FaradayTimingMiddleware::VERSION
  spec.authors       = ['aserafin']
  spec.email         = ['adrian@softmad.pl']

  spec.summary       = %q{Track response times for Faraday requests!}
  spec.description   = %q{Adds X-Faraday-Runtime header to the response so you can keep track of external service performance!}
  spec.homepage      = 'https://github.com/aserafin/faraday_timing_middleware'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'faraday', '~> 1.0'

  spec.add_development_dependency 'bundler', '~> 2.2'
  spec.add_development_dependency 'rake', '~> 13'
  spec.add_development_dependency 'rspec', '~> 3'
  spec.add_development_dependency 'webmock', '~> 3'
end
