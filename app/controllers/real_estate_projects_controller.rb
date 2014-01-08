# -*- encoding : utf-8 -*-
class RealEstateProjectsController < ApplicationController
  
  def show
    @real_estate_project = RealEstateProject.find params[:id]
  end
end
