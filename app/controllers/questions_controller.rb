class QuestionsController < ApplicationController
  inherit_resources
  actions :index, :create, :new
  @page = 'faq'

  protected

  def collection
    @questions ||= end_of_association_chain.page(params[:page])
  end
end
