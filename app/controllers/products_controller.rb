class ProductsController < ApplicationController
  include CurrentCart
  before_action :set_cart, only: [:index,:show, :shop]

  def index
    @products = Product.all params


  end
  def featured
    @products = Product.all
    @categories = Category.all
  end
  def show

    @product = Product.find(params[:number].to_i)
  end
  def shop
    if params[:search]
    @products = Product.search(params[:search])
    else
      @products = Product.all

    end
@products = Kaminari.paginate_array(@products).page(params[:page]).per(3)

  end
end
