OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '436383499803793', '0009b102b65c50898e93fc4eb79c7824'
end