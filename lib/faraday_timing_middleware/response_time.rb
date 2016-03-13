module FaradayTimingMiddleware
  class ResponseTime < Faraday::Middleware

    def call(request_env)
      start!

      @app.call(request_env).on_complete do |response_env|
        stop!
        response_env[:response_headers].merge!({ 'X-Faraday-Runtime' => elapsed_time })
      end
    end

    private
    def start!
      Thread.current[:faraday_request_starts_at] = Time.now
    end

    def stop!
      Thread.current[:faraday_request_ends_at] = Time.now
    end

    def elapsed_time
      ((Thread.current[:faraday_request_ends_at] - Thread.current[:faraday_request_starts_at]) * 1000).round(2)
    end
  end
end