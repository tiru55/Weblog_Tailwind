class Article < ApplicationRecord
	enum role: { Draft: 0, Published: 1, Unpublished: 2, Scheduled: 3 , Trash: 4 }
	belongs_to :user
end
