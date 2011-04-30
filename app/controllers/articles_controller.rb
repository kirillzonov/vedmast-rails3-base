class ArticlesController < ApplicationController
  inherit_resources
  actions :only => :show

  def show
    @page = 'product'
  end

  protected

  def collection
    @articles ||= end_of_association_chain.page(params[:page])
  end
end
