class Book < ApplicationRecord
    has_many :likes
    validates :title, presence: true
    validates :author, presence: true
    validates :category, presence: true
end
