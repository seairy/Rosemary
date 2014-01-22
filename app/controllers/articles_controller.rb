# -*- encoding : utf-8 -*-
class ArticlesController < ApplicationController
  before_filter :find_footer_articles
  
  def index
    @articles = Article.visible.sorted.paginate page: params[:page], per_page: 4
  end
  
  def show
    @article = Article.find params[:id]
  end
end
