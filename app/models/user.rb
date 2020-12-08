class User < ApplicationRecord
 
    has_many :votes, foreign_key: "user_id"
    has_many :articles, foreign_key: "author_id"

    validates :email, presence: true, uniqueness: true
    
    has_one_attached :avatar
end
