require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Klout
      include  OmniAuth::Strategy
      SITE = 'https://api.klout.com'
      AUTHORIZE_URL = 'https://api.klout.com/v2/oauth/'

      def initialize(app, api_key, api_secret)
        @api_key = api_key
        @api_secret = api_secret
        super(app)
      end

      def request_phase
        redirect request_url
      end

      uid { request.params['user'] }
      info do
        {
          authCode: request.params['authCode'],
        }
      end

      private
      def request_url
        "#{AUTHORIZE_URL}?apiKey=#{@api_key}&redirect=#{callback_url}"
      end

    end
  end
end
