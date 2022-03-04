class ArticleMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.article_mailer.article_created.subject
  #
  def article_created
    @user = params[:user]
    @article = params[:article]

    mail(:to => "#{@user.first_name} <#{@user.email}>", :subject => "Article has been Created")
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.article_mailer.article_updated.subject
  #
  def article_updated
    @user = params[:user]
    @article = params[:article]

    mail(:to => "#{@user.first_name} <#{@user.email}>", :subject => "Article has been Updated")

  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.article_mailer.article_destroyed.subject
  #
  def article_destroyed
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
