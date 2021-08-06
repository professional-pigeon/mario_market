class Review < ApplicationRecord
  belongs_to :product
  validates :author, presence: true, uniqueness: {case_sensitive: false}
  validates :rating, presence: true
  validates :content_body, presence: true
  validates_length_of :content_body, minimun: 50, maximum: 250
end