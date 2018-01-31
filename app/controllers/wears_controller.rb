class WearsController < ApplicationController
  def index
  	@wears = Wear.all
    @q = Wear.ransack(params[:q])
    @items = @q.result(distinct: true)
  end

  def new
    @wear = Wear.new
    @q = Wear.ransack(params[:q])
  end

  def show
  	@wear = Wear.find_by(id: params[:id])
    @q = Wear.ransack(params[:q])
  end

  def search
    @q = Wear.ransack(params[:q])
    @q.sex = 0
    @items = @q.result(distinct: true)
  end

  def link
    @time = Wear.find_by(id: params[:id])
    @time.updated_at = Time.current
    @time.popularity = @time.popularity.to_i + 1;
    @time.save
    if current_user != nil
      @click = Recentclick.new(user_id: current_user.id,wear_id: @time.id,updated_at: @time.updated_at)
      @click.save
    end
    redirect_to @time.link ,target: "_blank"
  end

  def create
  	@wear = Wear.new(wear_params)
    if @wear.save
      	redirect_to wears_path, notice: '投稿に成功しました'
    else
      flash.now[:alert] = "投稿に失敗しました"
      render :new
    end
  end
   def edit
     @wear = Wear.find_by(id: params[:id])
     @q = Wear.ransack(params[:q])
   end
  def update
     @wear = Wear.find_by(id: params[:id])
    if @wear.update(wear_params)
      	redirect_to wears_path, notice: '投稿に成功しました'
    else
      flash.now[:alert] = "投稿に失敗しました"
      render :new
    end
  end
 def destroy
  Wear.find_by(id: params[:id]).destroy
  redirect_to wears_path
 end
private
   def wear_params
      params.require(:wear).permit(:id,:image, :item_name, :colors,:category,:size, :price , :link , :keywords, :brand , :sales_percentage, :sex)
   end
end
