class Article < ApplicationRecord
	belongs_to :user
	after_save :create_article_id
	enum status: {
		Draft: 0,
		Published: 1,
		Scheduled: 2,
		Trash: 3
	}

	def create_article_id
      update_column(:article_id, self.article_id = "ART#{id}")
    end

end
