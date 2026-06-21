class User < ApplicationRecord
  has_many :posts, foreign_key: "creator_id"
  has_many :post_editors, foreign_key: "editor_id"
  has_many :edited_posts, through: :post_editors, source: :post
end
