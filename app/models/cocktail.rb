class Cocktail < ApplicationRecord
  #delete doses if cocktail is deleted
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  validates :name, presence: true, uniqueness: true
end
