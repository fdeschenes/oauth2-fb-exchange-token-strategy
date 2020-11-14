# frozen_string_literal: true

module OAuth2
  module Strategy
    class FbExchangeToken < Base
      def authorize_url
        raise NotImplementedError, 'The authorization endpoint is not used in this strategy'
      end

      def get_token(access_token, params = {}, opts = {})
        params = params.merge 'grant_type' => 'fb_exchange_token', 'fb_exchange_token' => access_token,
                              'client_id' => @client.id, 'client_secret' => @client.secret
        @client.get_token params, opts
      end
    end
  end
end
