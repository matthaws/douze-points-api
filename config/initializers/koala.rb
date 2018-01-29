Koala.configure do |config|
  config.app_id = ENV["FACEBOOK_KEY"]
  config.app_secret = ENV["FACEBOOK_SECRET"]
  # See Koala::Configuration for more options, including details on how to send requests through
  # your own proxy servers.
end
