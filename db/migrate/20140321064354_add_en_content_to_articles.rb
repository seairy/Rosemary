# -*- encoding : utf-8 -*-
class AddEnContentToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :en_content, :text, :after => :content
  end
end
