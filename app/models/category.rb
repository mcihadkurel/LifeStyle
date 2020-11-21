class Category < ApplicationRecord
    belongs_to :article, foreign_key: "article_id" 
end
