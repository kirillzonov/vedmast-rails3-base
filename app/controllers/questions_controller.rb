class QuestionsController < ApplicationController
  inherit_resources
  actions :all, :except => [:update, :delete]

  protected

  def collection
    @questions ||= end_of_association_chain.page(params[:page])
  end
end
