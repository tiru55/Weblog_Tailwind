class Question < ApplicationRecord
    has_many :answers 
    belongs_to :user    
    enum visibility: {
        Public: 1,
        Private: 2
    }
end
