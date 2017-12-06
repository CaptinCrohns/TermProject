class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :load_sidr_categories,
                only: %i[index show shop about contact new create]
  def load_sidr_categories
    @categories = Category.all
  end
end
