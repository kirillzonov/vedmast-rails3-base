class CategoriesController < ApplicationController
  inherit_resources
  actions :show

  def show 
    @page = 'products'
  end

  protected

  def collection
    @articles = resource.articles.page(params[:page])
  end
end
