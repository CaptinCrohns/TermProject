class AddOrderToProductItems < ActiveRecord::Migration[5.1]
  def change
    add_reference :product_items, :order, foreign_key: true
  end
end
