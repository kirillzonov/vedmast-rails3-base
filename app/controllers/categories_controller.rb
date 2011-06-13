class CategoriesController < ApplicationController
  inherit_resources
  actions :show

  def show 
    @page = 'products'
    respond_to do |format|
      format.html
      format.js
    end
  end

  protected

  def collection
    @articles = resource.articles.page(params[:page])
  end
end
