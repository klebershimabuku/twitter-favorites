require "rubygems"
require "twitter"


Rails.application.config.middleware.use OmniAuth::Builder do  
  provider :twitter, 'CONSUMER_KEY', 'CONSUMER_SECRET'
end

