class RecentclicksController < ApplicationController
  def index
  end

  def create
    recentclick = Recentclicks.new
    recentclick.user_id = current_user.id
    recentclick.wear_id = params[:wear_id]
    recentclick.save
    redirect_to users_path
  end
end
