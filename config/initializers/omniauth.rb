OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, "106230092864568", "b3e76648970679d4701acdab182d3d90"
end