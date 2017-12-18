class PagesController < ApplicationController
  if params[:q] != nil
     params[:q]['title_cont_any'] = params[:q]['title_cont_any'].split(/[\p{blank}\s]+/)
     @keyword = Page.ransack(params[:q])
     @blogs = @keyword.result
  else
     @keyword = Page.ransack(params[:q])
     @items = @keyword.result #検索の結果を受け取る。
   end
end
