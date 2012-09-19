class Giveaway < ActiveRecord::Base
  validates_presence_of :title, :end_date
  has_many :entries
  has_many :users, :through => :entries
end
