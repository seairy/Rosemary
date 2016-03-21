# -*- encoding : utf-8 -*-
class Admin::RealEstateProjectsController < Admin::BaseController
  
  def index
    @real_estate_projects = RealEstateProject.sorted.paginate page: params[:page]
  end
  
  def show
    @real_estate_project = RealEstateProject.find(params[:id])
  end
  
  def new
    @real_estate_project = RealEstateProject.new
  end
  
  def edit
    @real_estate_project = RealEstateProject.find(params[:id])
  end
  
  def create
    @real_estate_project = RealEstateProject.new(params[:real_estate_project])
    if @real_estate_project.save
      redirect_to [:admin, @real_estate_project], notice: '创建成功！'
    else
      render action: 'new'
    end
  end
  
  def update
    @real_estate_project = RealEstateProject.find(params[:id])
    if @real_estate_project.update_attributes(params[:real_estate_project])
      redirect_to [:admin, @real_estate_project], notice: '更新成功！'
    else
      render action: 'edit'
    end
  end
  
  def destroy
    @real_estate_project = RealEstateProject.find(params[:id])
    @real_estate_project.destroy
    redirect_to admin_real_estate_projects_path
  end
end
