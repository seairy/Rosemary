# -*- encoding : utf-8 -*-
class ApplicationController < ActionController::Base
  
  protected
  def find_footer_articles
    @footer_articles = Article.visible.sorted.limit 10
  end
end
