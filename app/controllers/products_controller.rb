class ProductsController < ApplicationController
  include CurrentCart
  before_action :set_cart, only: %i[index show shop]

  def index
    @products = Product.all # params
    @categories = Category.all
  end

  def featured
    @products = Product.all
    @categories = Category.all
  end

  def show
    @product = Product.find(params[:number].to_i)
  end

  def shop
    @products = if params[:search]
                  Product.search(params[:search])
                # @products = Product.category_search(param[:search])
                else
                  Product.all

                end

    @products = Kaminari.paginate_array(@products).page(params[:page]).per(3)
  end
end
