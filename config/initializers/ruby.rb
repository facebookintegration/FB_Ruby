#OmniAuth.confige.logger = Rails.logger
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '394438674028286' , '9ce753e9570537b8d81ce4ce70945ee2', :scope => 'email,user_birthday,publish_actions'
    end