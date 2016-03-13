require 'spec_helper'

describe FaradayTimingMiddleware::ResponseTime do
  it 'adds X-Faraday-Runtime header to the response' do
    stub_request :any, 'facebook.com'

    connection = Faraday.new do |connection|
      connection.use :response_time
      connection.adapter Faraday.default_adapter
    end

    response = connection.get 'http://facebook.com'

    expect(response.headers.key?('X-Faraday-Runtime')).to eq true
    expect(response.headers['X-Faraday-Runtime']).to be > 0
  end
end
