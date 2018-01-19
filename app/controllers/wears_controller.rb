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
    @items = @q.result(distinct: true)
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

private
   def wear_params
      params.require(:wear).permit(:image, :item_name, :size, :price , :link , :keywords, :brand , :sales_percentage)
   end
end

