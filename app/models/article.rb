class Article < ApplicationRecord
	has_rich_text :content
	belongs_to :user
	after_save :create_article_id
	
	enum status: {
		Draft: 0,
		Published: 1,
		Scheduled: 2,
		Trash: 3
	}

	enum visibility: {
		Public: 1,
		Private: 2
	}


	validates :title,presence: true,length: { minimum: 10, maximum: 200}
	validates :content,presence: true, length: {minimum: 6}
	validates :tags,presence:true

	def create_article_id
      update_column(:article_id, self.article_id = "ART#{id}")
    end

end
