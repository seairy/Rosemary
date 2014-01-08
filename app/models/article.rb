# -*- encoding : utf-8 -*-
class Article < ActiveRecord::Base
  scope :sorted, order('featured DESC, visible DESC, created_at DESC')
  scope :latest, order('created_at DESC')
  scope :visible, where(visible: true)
  scope :featured, where(featured: true)
end
