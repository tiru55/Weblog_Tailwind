# Preview all emails at http://localhost:3000/rails/mailers/article_mailer
class ArticleMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/article_mailer/article_created
  def article_created
    ArticleMailer.article_created
  end

  # Preview this email at http://localhost:3000/rails/mailers/article_mailer/article_updated
  def article_updated
    ArticleMailer.article_updated
  end

  # Preview this email at http://localhost:3000/rails/mailers/article_mailer/article_destroyed
  def article_destroyed
    ArticleMailer.article_destroyed
  end

end
