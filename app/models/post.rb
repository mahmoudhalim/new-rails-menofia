class Post < ApplicationRecord
  belongs_to :creator, class_name: "User"

  # M:M with editors
  has_many :post_editors, foreign_key: :post_id
  has_many :editors, through: :post_editors
end
