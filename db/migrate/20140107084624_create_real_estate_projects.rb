# -*- encoding : utf-8 -*-
class CreateRealEstateProjects < ActiveRecord::Migration
  def change
    create_table :real_estate_projects do |t|
      t.string :name, :limit => 200, :null => false
      t.string :cover_image, :preview_image, :panaorama_image, :limit => 500
      t.text :description
      t.integer :position, :null => false
      t.timestamps
    end
  end
end
