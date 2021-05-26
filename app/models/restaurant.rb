class Restaurant < ApplicationRecord
  has_many :reviews
  
  # A restaurant must have a name, an address and a category.
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true

  # A restaurant’s category must belong to this fixed list: ["chinese", "italian", "japanese", "french", "belgian"].
end
