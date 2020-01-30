class PokemonType < ApplicationRecord
  validates :pokemon, presence: true
  validates :type, presence: true
  validates :slot, presence: true,
    numericality: { only_integer: true, greater_than: 0, less_than: 3}
  validates_uniqueness_of :pokemon_id, scope: [:type_id]

  belongs_to :pokemon
  belongs_to :type
end
git