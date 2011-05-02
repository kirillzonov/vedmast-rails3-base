class OrderMailer < ActionMailer::Base
  default :from => "DrevnMast"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.question_mailer.new_question.subject
  #
  def new_order(order)
    @order = order
    @articles = @order.articles
    mail(:to => "drevnmast@yandex.ru", :subject => "Новый заказ", :from => @order.email)
  end
end
