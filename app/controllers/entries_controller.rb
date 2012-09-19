class EntriesController < ApplicationController
  def create
    facebook_id = params[:fb_id]
    render :nothing => true
  end
end