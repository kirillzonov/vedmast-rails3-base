class CategoriesController < ApplicationController
  inherit_resources
  actions :index, :show

  protected

  def collection
    @categories ||= end_of_association_chain.page(params[:page])
  end
end
