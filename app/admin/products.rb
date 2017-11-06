ActiveAdmin.register Product do

permit_params :name, :price, :description, :quantity, :category_id

end
