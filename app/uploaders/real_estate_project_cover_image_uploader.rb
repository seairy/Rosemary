# -*- encoding : utf-8 -*-
class RealEstateProjectCoverImageUploader < BaseUploader
  
  process :resize_to_fit => [218, 158]
end
