require 'coveralls'
Coveralls.wear!

require 'bundler/setup'
require 'oauth2'
require 'oauth2_fb_exchange_token_strategy'

RSpec.configure do |config|
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
