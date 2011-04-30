class InformationController < ApplicationController
  inherit_resources

  protected

  def collection
    @information ||= end_of_association_chain.page(params[:page])
  end
end
