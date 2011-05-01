class InformationsController < ApplicationController
  inherit_resources
  actions :index, :show
  @page = 'about'

  protected

  def collection
    @information ||= end_of_association_chain.page(params[:page])
  end
end
