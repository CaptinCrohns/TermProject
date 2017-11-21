class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
before_action :load_sidr_categories, only: [:index,:show, :shop]

  def load_sidr_categories

    @categories = Category.all

  end

end
