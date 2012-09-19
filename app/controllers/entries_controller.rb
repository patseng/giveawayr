class EntriesController < ApplicationController
  def create
    
    facebook_id = params[:facebook_uid]
    # giveaway_id = params[:giveaway_id]
    
    # look up the user with that facebook_id
    user = User.where({:uid => facebook_id, :provider => "facebook"}).first
  
    # TODO: giveaway_id should be in the url parameters
    
    entry = Entry.new({user: user, giveaway: Giveaway.first, points: 1})
    entry.save
    
    render :nothing => true
  end
end