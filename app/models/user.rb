class User < ActiveRecord::Base
has_many :entries
has_many :giveaways, :through => :entries
  # class method
  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.email = auth.info.email
      user.location = auth.info.location
      user.save!
    end
  end  
end