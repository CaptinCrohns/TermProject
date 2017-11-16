class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
  def featured
    @products = Product.all
    @categories = Category.all
  end
  def show
    @product = Product.find(params[:number].to_i)
  end
end
