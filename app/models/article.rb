class Article < ApplicationRecord
	has_rich_text :content
	belongs_to :user
	after_save :create_article_id	
	has_many :comments,dependent: :destroy
	has_one_attached :banner
	enum status: {
		Draft: 0,
		Published: 1,
		Scheduled: 2,
		Trash: 3
	}

	validates :title,presence: true,length: { minimum: 10, maximum: 200}
	validates :content,presence: true, length: {minimum: 6}
	validates :tags,presence:true
	validates :status, inclusion: { in: statuses } 

	scope :published, -> { where(:status => "Published")}
	# Ex:- scope :active, -> {where(:active => true)}

	def create_article_id
      update_column(:article_id, self.article_id = "ART#{id}")
    end
	
end
