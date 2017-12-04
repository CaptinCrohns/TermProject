class Product < ApplicationRecord
  before_destroy :ensure_not_product_item
  has_many :product_items
  belongs_to :category  # There is a category id in the product table
  validates :description, presence: true
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  validates :name, presence: true
  def self.search(search)
    where("name LIKE ? OR description LIKE ? ", "%#{search}%", "%#{search}%")
  end
  # def category_search 
  # @search = params[:search]
  # @categories = Category.include(:products).where("name LIKE '%#{@search}%'")
  # end
  # def product_in_category
  # @search = params[:search]
  # @category_id = params[:category]
  # @products = Category.include(:products).find(@category_id).where("product.name LIKE '%#{@search}%'")
  # end

def ensure_not_product_item
  if product_items.empty?
    return true
  else
    errors.add(:base, 'You have Product Items')
    return false
  end
end
end
