class Review < ApplicationRecord
  belongs_to :restaurant

  # # A restaurant’s category must belong to this fixed list: 
  # #["chinese", "italian", "japanese", "french", "belgian"].
  # validates :category, acceptance: { accept: ["chinese", "italian", "japanese", "french", "belgian"] }
  

  # A review must belong to a restaurant.
  # A review must have content and a rating.
  validates :content, :rating, presence: true
  # A review’s rating must be a number between 0 and 5.
  validates :rating, numericality: { only_integer: true }
  validates :rating, acceptance: { accept: [0,1,2,3,4,5] }



end
