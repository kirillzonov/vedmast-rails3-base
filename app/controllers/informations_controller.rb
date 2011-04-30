class InformationsController < ApplicationController
  inherit_resources
  actions :index, :show

  protected

  def collection
    @information ||= end_of_association_chain.page(params[:page])
  end
end
