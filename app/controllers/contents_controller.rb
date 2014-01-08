# -*- encoding : utf-8 -*-
class ContentsController < ApplicationController
  
  def about_us
    
  end
  
  def business_areas
    @real_estate_projects = RealEstateProject.sorted.limit(4)
  end
  
  def human_resources
    
  end
  
  def contact_us
    
  end
end
