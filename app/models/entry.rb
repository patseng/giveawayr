class Entry < ActiveRecord::Base
  # Attributes: points:integer (see schema of database)
  belongs_to :user
  belongs_to :giveaway
  
end
