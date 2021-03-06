class SessionsController < ApplicationController
  def new
    @q = Wear.ransack(params[:q])
    @user = User.new
  end

  def create
    @q = Wear.ransack(params[:q])
    if @user = login(params[:email], params[:password], params[:remember])
      if @user.admin?
        redirect_back_or_to(:users, notice: 'ログインに成功しました')
      else
        redirect_to edit_user_path(id: @user.id)
      end
    else
      flash.now[:alert] = 'ログインに失敗しました'
      render action: 'new'
    end
  end

  def destroy
    logout
    redirect_to( pages_index_path, notice: 'ログアウトしました')
  end
end
