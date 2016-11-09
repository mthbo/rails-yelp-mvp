class Restaurant < ApplicationRecord
  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]

  has_many :reviews, dependent: :destroy

  validates :name, presence: { message: "The restaurant must have a name" }
  validates :address, presence: { message: "The restaurant must have an address" }
  validates :category, inclusion: { in: CATEGORY, allow_nil: false, message: "The restaurant must have a category" }
end
