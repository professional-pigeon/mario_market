class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :cost, presence: true
  validates :origin, presence: true
  scope :local, -> { where(origin: "USA").limit(5) }
  scope :most_recent, -> { order(created_at: :desc).limit(5)}
  scope :most_reviews, -> {(
    select("products.id, products.cost, products.name, products.origin, count(reviews.id) as reviews_count")
    .joins(:reviews)
    .group("products.id")
    .order("reviews_count DESC")
    .limit(5)
    )}

  before_save(:titleize_product)

  private
    def titleize_product
      self.name = self.name.titleize
    end
end