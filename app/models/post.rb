class Post < ApplicationRecord
    # validation
    validates :title, length: { minimum: 5 }
    validates :content, presence: true, length: { maximum: 120 }
end
