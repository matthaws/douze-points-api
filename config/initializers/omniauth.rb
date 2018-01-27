Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook,      ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET'],
    display: 'popup', scope: 'email, public_profile', image_size: 'square'

  provider :google_oauth2, ENV['GOOGLE_KEY'],   ENV['GOOGLE_SECRET'],
  {
    name: 'google',
    scope: 'email, profile, plus.me, http://gdata.youtube.com',
    prompt: 'select_account',
    image_aspect_ratio: 'square',
    image_size: 50
  }
end
