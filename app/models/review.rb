class Review < ApplicationRecord
  belongs_to :product
  validates :author, :content_body, :rating, presence: true
  validates :rating, numericality: true
  validates_length_of :content_body, in: 50..250
end