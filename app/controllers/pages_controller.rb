class PagesController < ApplicationController
  def index
  	@wears = Wear.all
  	@q = Wear.ransack(params[:q])
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
