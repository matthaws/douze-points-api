Koala.configure do |config|
  if Rails.env.production?
    config.app_id = ENV["FACEBOOK_PRO_KEY"]
    config.app_secret = ENV["FACEBOOK_PRO_SECRET"]
  else
    config.app_id = ENV["FACEBOOK_DEV_KEY"]
    config.app_secret = ENV["FACEBOOK_DEV_SECRET"]
  end
  # See Koala::Configuration for more options, including details on how to send requests through
  # your own proxy servers.
end
