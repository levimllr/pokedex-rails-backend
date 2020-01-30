class Type < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  
  has_many :pokemon_types
  has_many :pokemon, through: :pokemon_types
end
