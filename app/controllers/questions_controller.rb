class QuestionsController < ApplicationController
  inherit_resources
  actions :all, :except => [:update, :delete]
  @page = 'faq'

  protected

  def collection
    @questions ||= end_of_association_chain.page(params[:page])
  end
end
