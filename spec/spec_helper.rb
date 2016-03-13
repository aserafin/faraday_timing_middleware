$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

require 'rspec'
require 'webmock/rspec'
require 'faraday'
require 'faraday_timing_middleware'
