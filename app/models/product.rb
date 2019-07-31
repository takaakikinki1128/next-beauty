class Product < ApplicationRecord
  mount_uploader :video, VideoUploader
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_one :item
  has_one :color
  has_one :perm

end
