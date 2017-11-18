class ProductsController < ApplicationController
  def index
    @products = Product.all
    @randomProduct = Product.order("RANDOM()").first
    if params[:search]
    @products = Product.search(params[:search]).order("created_at DESC")
  else
    @products = Product.all.order("created_at DESC")
  end

  end
  def featured
    @products = Product.all
    @categories = Category.all
  end
  def show

    @product = Product.find(params[:number].to_i)
  end
  def shop

    @products = Product.all

  end
end
