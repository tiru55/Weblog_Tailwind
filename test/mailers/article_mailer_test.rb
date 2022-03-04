require "test_helper"

class ArticleMailerTest < ActionMailer::TestCase
  test "article_created" do
    mail = ArticleMailer.article_created
    assert_equal "Article created", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "article_updated" do
    mail = ArticleMailer.article_updated
    assert_equal "Article updated", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "article_destroyed" do
    mail = ArticleMailer.article_destroyed
    assert_equal "Article destroyed", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
