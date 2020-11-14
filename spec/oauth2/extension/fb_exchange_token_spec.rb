RSpec.describe OAuth2::Extension::FbExchangeToken do
  describe '#fb_exchange_token' do
    it 'is included in OAuth2::Client' do
      expect(OAuth2::Client.new('abc', 'def').respond_to?(:fb_exchange_token)).to eq(true)
    end

    it 'returns a FbExchangeToken strategy' do
      expect(OAuth2::Client.new('abc', 'def').fb_exchange_token).to be_kind_of(OAuth2::Strategy::FbExchangeToken)
    end
  end
end
