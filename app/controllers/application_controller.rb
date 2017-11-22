class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
before_action :load_sidr_categories, only: [:index,:show, :shop, :about, :contact]
 

  def load_sidr_categories

    @categories = Category.all

  end


end
