ActiveAdmin.register Product do
  permit_params :name, :price, :description, :image,
                :quantity, :category_id, :status
end
