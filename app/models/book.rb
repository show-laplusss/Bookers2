class Book < ApplicationRecord
    belongs_to :user
    
    validates :title, presence: true
    validates :body, presence: true
    validates :body, length: {minimum: 0, maximum: 200 }
    
end
