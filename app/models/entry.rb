class Entry < ActiveRecord::Base
  # Attributes: points:integer (see schema of database)
  belongs_to :user
  belongs_to :giveaway

  # these are automatically generated by belongs_to :user
  # def user_id=
  #   
  # end
  # 
  # def user=
  #   
  # end
  
  # validations
  validates_presence_of :user, :giveaway
  validates_uniqueness_of :user_id, :scope => :giveaway_id
end
