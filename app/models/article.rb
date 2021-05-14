class Article < ApplicationRecord
  
  has_many :article_comments, dependent: :delete_all
  belongs_to :category
  attachment :image
  
end
