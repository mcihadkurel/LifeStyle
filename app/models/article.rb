class Article < ApplicationRecord
    belongs_to :user, :optional => true, foreign_key: "author_id"
    has_many :votes, foreign_key: "article_id"
    has_many :categories, foreign_key: "article_id"
end
