class PagesController < ApplicationController
  include CurrentCart
  before_action :set_cart, only: %i[index show shop about contact]
  def index
    @products = Product.all
    @categories = Category.all
  end

  def about
    @about_page = Page.find(2)
  end

  def contact
    @contact_page = Page.find(1)
  end
end
