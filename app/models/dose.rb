class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, :ingredient, :cocktail, presence: true
  validates :ingredient, :cocktail, uniqueness: { scope: [:ingredient, :cocktail] }
end
