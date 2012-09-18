class Giveaway < ActiveRecord::Base
  validates_presence_of :title, :end_date
end
