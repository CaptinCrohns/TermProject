class PagesController < ApplicationController
  def index
    @products = Product.all
    @categories = Category.all
  end



  def contact
  end

  def about
  end
end
