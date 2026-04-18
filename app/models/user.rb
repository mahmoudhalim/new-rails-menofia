class User < ApplicationRecord
  has_many :created_posts, foreign_key: :creator_id, class_name: "Post"

  # M:M relation with posts
  has_many :post_editors, foreign_key: :editor_id
  has_many :posts, through: :post_editors
end
