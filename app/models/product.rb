class Product < ApplicationRecord
  belongs_to :category  # There is a category id in the product table
  validates :description, presence: true
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  # validates :name, presence: true
  def self.search(search)
    where("name LIKE ? OR description LIKE ? ", "%#{search}%", "%#{search}%")
  end

end
