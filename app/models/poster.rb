# -*- encoding : utf-8 -*-
class Poster < ActiveRecord::Base
  mount_uploader :image, PosterUploader
  scope :available, where(available: true)
  scope :sorted, order('available DESC, position ASC, created_at DESC')
end
