class Product < ApplicationRecord
  belongs_to :category  # There is a category id in the product table
  # mount_uploader :image, PictureUploader
  validates :name, presence: true
end
