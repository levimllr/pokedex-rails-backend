class Pokemon < ApplicationRecord
    # validates :number,presence: true, uniqueness: true,
    #     numericality: { only_integer: true, greater_than: 0 }
    # validates :name, presence: true, uniqueness: true
    # validates :height, presence: true,
    #     numericality: { only_integer: true, greater_than: 0 }
    # validates :weight, presence: true,
    #     numericality: { only_integer: true, greater_than: 0 }
    # validates :flavor_text, presence: true, uniqueness: true
    # validates :image_url, presence: true, uniqueness: true

    # has_many :pokemon_types
    # has_many :types, through: :pokemon_types
end
