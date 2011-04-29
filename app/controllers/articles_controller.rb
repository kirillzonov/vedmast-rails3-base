class ArticlesController < ApplicationController
  inherit_resources

  protected

  def collection
    @articles ||= end_of_association_chain.page(params[:page])
  end
end
