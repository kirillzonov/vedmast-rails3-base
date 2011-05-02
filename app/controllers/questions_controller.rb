class QuestionsController < ApplicationController
  inherit_resources
  actions :index, :create, :new
  @page = 'faq'

  def create
    super do |format|
      QuestionMailer.new_question(@question).deliver
      format.html { redirect_to(questions_path, :notice => 'Вопрос добавлен') }
    end
  end

  protected

  def collection
    @questions ||= end_of_association_chain.page(params[:page])
  end
end
