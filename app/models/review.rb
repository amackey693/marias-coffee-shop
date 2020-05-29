class Review < ApplicationRecord
  belongs_to :product
  validates :author, :content_body, :rating, presence: true
  validates :rating, numericality: true
end