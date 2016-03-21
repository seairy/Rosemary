# -*- encoding : utf-8 -*-
class RealEstateProjectPreviewImageUploader < BaseUploader
  
  process :resize_to_fit => [221, 146]
end
