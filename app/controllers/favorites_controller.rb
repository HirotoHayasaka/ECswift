class FavoritesController < ApplicationController
  
  def index
    @favorite_wears = current_user.favorite_wears
    @q = Wear.ransack(params[:q])
  end

  def create
    favorite = Favorite.new
    favorite.user_id = current_user.id
    favorite.wear_id = params[:wear_id]
    if favorite.save
      redirect_to root_path, notice: 'お気に入りに登録しました'
    else
      redirect_to root_path, notice: 'お気に入りに登録に失敗しました'
    end
  end
end