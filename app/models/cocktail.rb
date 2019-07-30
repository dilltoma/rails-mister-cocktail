# class Cocktail < ApplicationRecord
#   has_many :doses
#   has_many :ingredients, through: :doses

#   validates :name, presence: true, uniqueness: true
# end

class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_many :reviews
  validates :name, presence: true, uniqueness: true
end
