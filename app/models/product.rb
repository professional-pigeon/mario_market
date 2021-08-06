class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true, uniqueness: {case_sensitive: false}
  validates :cost, presence: true
  validates :origin, presence: true
  scope :local, -> { where(origin: "USA") }


  before_save(:titleize_product)

  private
    def titleize_product
      self.name = self.name.titleize
    end
end