class Product < ApplicationRecord
  belongs_to :category  # There is a category id in the product table

  validates :name, presence: true
end
