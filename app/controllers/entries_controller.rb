class EntriesController < ApplicationController
  def index
    # TODO: actually select current giveaway
    giveaway_id = 1
    if current_user
      # This next line is another way to get the appropriate entry
      # @entry = Entry.where({user_id: current_user.id, giveaway_id: giveaway_id}).first
    	@entry = Entry.find_by_user_id_and_giveaway_id(current_user.id, giveaway_id)
    end
  end
  
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