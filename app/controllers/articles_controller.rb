class ArticlesController < ApplicationController
  inherit_resources
  actions :only => [:index, :show]
  @page = 'products'

  protected

  def collection
    @articles ||= end_of_association_chain.page(params[:page])
  end
end
