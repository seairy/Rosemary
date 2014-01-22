# -*- encoding : utf-8 -*-
class RealEstateProjectsController < ApplicationController
  before_filter :find_footer_articles
  
  def show
    @real_estate_project = RealEstateProject.find params[:id]
  end
end
