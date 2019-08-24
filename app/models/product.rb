class Product < ApplicationRecord
  mount_uploader :video, VideoUploader
  mount_uploader :image, ImageUploader
  belongs_to :user
  belongs_to :item
  belongs_to :color
  belongs_to :perm
  belongs_to :stylegenre 
  validates :text, presence: true
  validates :shop_name, presence: true
  validates :stylest_name, presence: true
  validates :video, presence: true




end
