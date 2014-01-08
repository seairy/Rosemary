# -*- encoding : utf-8 -*-
class RealEstateProjectPanoramaImageUploader < BaseUploader
  
  process :resize_to_fit => [681, 305]
end
