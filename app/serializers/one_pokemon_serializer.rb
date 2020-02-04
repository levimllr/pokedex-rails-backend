class OnePokemonSerializer
  include FastJsonapi::ObjectSerializer
  
  attributes :abilities, :base_experience, :forms, :game_indices, :height, 
    :held_items, :pokemon_id, :is_default, :location_area_encounters, :moves, 
    :name, :order, :species, :sprites, :stats, :types, :weight
end
