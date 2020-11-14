# OAuth2 Strategy for Facebook Long-Lived User Access Tokens

[![Gem Version](https://badge.fury.io/rb/oauth2-fb-exchange-token-strategy.svg)](https://badge.fury.io/rb/oauth2-fb-exchange-token-strategy)
[![Maintainability](https://api.codeclimate.com/v1/badges/34355bd39e55a168918a/maintainability)](https://codeclimate.com/github/fdeschenes/oauth2-fb-exchange-token-strategy/maintainability)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT)
[![FOSSA Status](https://app.fossa.com/api/projects/git%2Bgithub.com%2Ffdeschenes%2Foauth2-fb-exchange-token-strategy.svg?type=shield)](https://app.fossa.com/projects/git%2Bgithub.com%2Ffdeschenes%2Foauth2-fb-exchange-token-strategy?ref=badge_shield)

As per Facebook, default User and Page access tokens are short-lived, expiring in hours, however, you can [exchange a short-lived token for a long-lived token](https://developers.facebook.com/docs/facebook-login/access-tokens/refreshing/).

This gem adds a new strategy to the excellent [oauth2](https://github.com/oauth-xx/oauth2) gem that can be used to do just that.

## Installation

```
gem install oauth2_fb_exchange_token_strategy
```

Or inside Gemfile

```
gem 'oauth2_fb_exchange_token_strategy'
```

## Usage Examples

```ruby
require 'oauth2'
require 'oauth2_fb_exchange_token_strategy'
client = OAuth2::Client.new('client_id', 'client_secret', site: 'https://graph.facebook.com/v9.0', authorize_url: 'https://www.facebook.com/v8.0/dialog/oauth', token_url: 'oauth/access_token')

short_lived_token = client.auth_code.get_token('authorization_code_value', redirect_uri: 'http://example.org/oauth2/callback')
token = client.fb_exchange_token(short_lived_token.token)
# => OAuth2::AccessToken
```
