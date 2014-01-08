# -*- encoding : utf-8 -*-
class ArticlesController < ApplicationController
  
  def index
    @articles = Article.visible.sorted.paginate page: params[:page], per_page: 10
  end
  
  def show
    @article = Article.find params[:id]
  end
end
