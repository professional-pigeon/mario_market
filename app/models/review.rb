class Review < ApplicationRecord
  belongs_to :product
  validates :author, presence: true, uniqueness: {case_sensitive: false}
  validates :rating, presence: true
  validates :content_body, presence: true
end