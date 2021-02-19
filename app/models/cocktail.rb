class Cocktail < ApplicationRecord
  #delete doses if cocktail is deleted
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_one_attached :photo
  validates :name, presence: true, uniqueness: true
  validates :photo, presence: true
end
