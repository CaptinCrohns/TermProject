class PagesController < ApplicationController
  def index
    @products = Product.all
    @categories = Category.all
  end
  def about
    @aboutPage = Page.find(2)

  end
    def contact
      @contactPage = Page.find(1)
    end


end
