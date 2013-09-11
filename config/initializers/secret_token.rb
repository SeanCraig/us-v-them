# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
UsVThem::Application.config.secret_key_base = ENV['SECRET_TOKEN'] || 'this_faked_secret_token_used_for_development_only'

if !['development', 'test'].include? Rails.env
  fail "You must set a secret token" if UsVThem::Application.config.secret_key_base == 'this_faked_secret_token_used_for_development_only'
end
