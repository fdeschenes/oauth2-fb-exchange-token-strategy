# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name = 'oauth2_fb_exchange_token_strategy'
  s.version = '1.0.0'
  s.author = 'Francois Deschenes'
  s.email = 'fdeschenes@me.com'
  s.summary = 'OAuth2 Strategy for Facebook Long-Lived User Access Token'
  s.homepage = 'https://github.com/fdeschenes/oauth2-fb-exchange-token-strategy'
  s.license = 'MIT'

  s.files = Dir['MIT-LICENSE', 'README.md', 'lib/**/*']
  s.require_paths = ['lib']

  s.required_ruby_version = '>= 1.9.0'

  s.add_development_dependency 'bundler', '~> 1.17'
  s.add_development_dependency 'rake', '~> 10.0'
  s.add_development_dependency 'rspec', '~> 3.0'

  s.add_dependency 'oauth2', '~> 1'
end
