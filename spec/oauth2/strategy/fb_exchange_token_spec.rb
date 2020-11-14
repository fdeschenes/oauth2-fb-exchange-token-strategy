RSpec.describe OAuth2::Strategy::FbExchangeToken do
  subject { client.fb_exchange_token }

  let(:client) do
    OAuth2::Client.new('abc', 'def') do |builder|
      builder.adapter :test do |stub|
        stub.post('/oauth/token', 'client_id' => 'abc', 'client_secret' => 'def', 'fb_exchange_token' => 'ghi', 'grant_type' => 'fb_exchange_token') do |env|
          [200, {'Content-Type' => 'application/json'}, '{"access_token":"klm","refresh_token":null,"expires_at":null}']
        end
      end
    end
  end

  describe '#authorize_url' do
    it 'raises an exception' do
      expect { subject.authorize_url }.to raise_error(NotImplementedError)
    end
  end

  describe '#get_token' do
    before do
      @token = subject.get_token('ghi')
    end

    it 'returns an access token with #token' do
      expect(@token.token).to eq('klm')
    end

    it 'returns a nil refresh token with #refresh_token' do
      expect(@token.refresh_token).to eq(nil)
    end

    it 'returns a nil expiry date with #expires_at' do
      expect(@token.expires_at).to eq(nil)
    end
  end
end
