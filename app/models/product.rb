class Product < ApplicationRecord
  before_destroy :ensure_not_product_item
  has_many :product_items
  belongs_to :category # There is a category id in the product table
  validates :description, presence: true
  has_attached_file :image, styles: { medium: '300x300>', thumb: '100x100>' }
  validates_attachment_content_type :image, content_type: %r{\Aimage\/.*\z}
  validates :name, presence: true
  def self.search(search)
    where('name LIKE ? OR description LIKE ? ', "%#{search}%", "%#{search}%")
  end

  def ensure_not_product_item
    if product_items.empty?
      true
    else
      errors.add(:base, 'You have Product Items')
      false
    end
  end
end
