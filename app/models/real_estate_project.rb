class RealEstateProject < ActiveRecord::Base
  mount_uploader :cover_image, RealEstateProjectCoverImageUploader
  mount_uploader :preview_image, RealEstateProjectPreviewImageUploader
  mount_uploader :panaorama_image, RealEstateProjectPanoramaImageUploader
  scope :sorted, order('position ASC, created_at DESC')
end
