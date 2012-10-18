require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Klout < OmniAuth::Strategies::OAuth2
      option :client_options, {
        :site => 'https://api.klout.com',
        :authorize_url => 'https://api.klout.com/v2/oauth',
        :token_url => 'https://api.klout.com/v2/oauth/token'
      }
    end
  end
end
