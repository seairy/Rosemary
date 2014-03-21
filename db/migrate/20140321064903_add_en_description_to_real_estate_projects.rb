class AddEnDescriptionToRealEstateProjects < ActiveRecord::Migration
  def change
    add_column :real_estate_projects, :en_description, :text, :after => :description
  end
end
