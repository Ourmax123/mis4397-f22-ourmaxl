class Post < ApplicationRecord
    belongs_to :user
    
    has_one_attached :image
    validates :body, length: {minimum: 1, maximum: 200}
end
