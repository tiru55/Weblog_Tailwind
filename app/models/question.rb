class Question < ApplicationRecord
    has_many :answers 
    
    enum visibility: {
        Public: 1,
        Private: 2
    }
end
