Rails.application.config.middleware.use  OmniAuth::Builder  do
  provider  :github,'Client ID', ' Client Secret'
end
