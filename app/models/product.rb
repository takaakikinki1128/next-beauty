class Product < ApplicationRecord
  mount_uploader :video, VideoUploader
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_one :item
  has_one :color
  has_one :perm
  has_one :stylegenre 
  validates :text, presence: true
  validates :shop_name, presence: true
  validates :stylest_name, presence: true
  



end
