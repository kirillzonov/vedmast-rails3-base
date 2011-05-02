class QuestionMailer < ActionMailer::Base
  default :from => "DrevnMast"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.question_mailer.new_question.subject
  #
  def new_question(question)
    @question = question
    mail(:to => "drevnmast@yandex.ru", :subject => "Новый вопрос")
  end
  def new_comment(question)
    @answer = question.answer
    mail(:to => "#{@question.email}", :subject => "Ответ на Ваш вопрос")
  end

end
