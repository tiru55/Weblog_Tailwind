class Article < ApplicationRecord
	enum status: { Draft: 0, Published: 1, Unpublished: 2, Scheduled: 3 , Trash: 4 }
	belongs_to :user
	after_save :create_article_id

  	private
    # Concatenate ID with prefix N to create item number
    def create_article_id
      update_column(:article_id, self.article_id = "ART#{id}")
    end

	end
