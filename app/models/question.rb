class Question < ApplicationRecord
    has_many :answers,dependent: :destroy 
    belongs_to :user    
    enum visibility: {
        Public: 1,
        Draft: 2
    }
end
