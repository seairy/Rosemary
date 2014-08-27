# -*- encoding : utf-8 -*-
class ContentsController < ApplicationController
  before_filter :find_footer_articles
  
  def about_us
    @featured_articles = Article.visible.featured.limit 2
  end
  
  def business_areas
    @real_estate_projects = RealEstateProject.sorted
  end
  
  def human_resources
    
  end
  
  def contact_us
    
  end
end
