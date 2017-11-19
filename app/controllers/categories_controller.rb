class CategoriesController < ApplicationController
  def index
      @categories = Category.all
  end

  def show
      @category = Category.find(params[:number].to_i)
  end
end
