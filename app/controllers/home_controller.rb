# -*- encoding : utf-8 -*-
class HomeController < ApplicationController
  before_filter :find_footer_articles
  
  def index
    @posters = Poster.available.sorted
  end
end
