# -*- encoding : utf-8 -*-
class Attachment < ActiveRecord::Base
  mount_uploader :file, AttachmentUploader
  scope :sorted, order('created_at DESC')
end
