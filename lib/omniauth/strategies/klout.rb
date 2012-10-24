require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Klout < OmniAuth::Strategies::OAuth2
      option :client_options, {
        :site => 'https://api.klout.com',
        :authorize_url => 'https://api.klout.com/v2/oauth/',
        :token_url => 'https://api.klout.com/v2/oauth/token'
      }

      def request_phase
        redirect client.auth_code.authorize_url({apiKey: client.id, redirect: callback_url}.merge(authorize_params))
      end

      def callback_phase # override the OAuth2 callback
        self.env['omniauth.auth'] = auth_hash
        call_app!
      end

      uid { request.params['user'] }
      info do
        {
          'authCode' => request.params['authCode'],
        }
      end

      def credentials
        {} # return nothing, klout doesn't give us anything
      end

    end
  end
end
