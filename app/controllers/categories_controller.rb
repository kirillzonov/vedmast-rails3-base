class CategoriesController < ApplicationController
  inherit_resources
  actions :index, :show

  def show 
    @page = 'products'
  end

  protected

  def collection
    @articles = @category.articles.page(params[:page])
  end
end
