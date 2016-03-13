require 'faraday_timing_middleware/version'
require 'faraday_timing_middleware/response_time'

Faraday::Middleware.register_middleware response_time: FaradayTimingMiddleware::ResponseTime