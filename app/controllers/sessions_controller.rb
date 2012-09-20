class SessionsController < ApplicationController
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id #Store in session as a cookie
    if params[:enter_giveaway]
      # TODO: only works if we have one provider - facebook
      redirect_to :controller => 'entries', :action => 'create', facebook_uid: user.uid, enter_giveaway: true    
    else
      redirect_to root_url
    end
  end
  
  def destroy 
    session[:user_id] = nil
    current_user = nil #Invokes setter method from application controller
    redirect_to root_url
  end
end