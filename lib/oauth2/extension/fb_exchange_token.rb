# frozen_string_literal: true

module OAuth2
  module Extension
    module FbExchangeToken
      def fb_exchange_token
        @fb_exchange_token ||= OAuth2::Strategy::FbExchangeToken.new(self)
      end
    end
  end
end

OAuth2::Client.include OAuth2::Extension::FbExchangeToken
