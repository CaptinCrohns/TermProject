class PagesController < ApplicationController
  def index
    @products = Product.all
    @categories = Category.all
  end

  def shop
    @products = Product.all
  end

  def contact
  end

  def about
  end
end
