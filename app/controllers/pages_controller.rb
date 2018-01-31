class PagesController < ApplicationController
  def index
  	@wears = Wear.all.order(popularity: "DESC")
  	@q = Wear.ransack(params[:q])
  	@recents = Wear.all.order(updated_at: "DESC")
  	@news = Wear.all.order(created_at: "DESC")
  end

  def search
    @q = Wear.ransack(params[:q])
    redirect_to wear_search_path
  end

  private
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation , :role , :name)
    end
end
