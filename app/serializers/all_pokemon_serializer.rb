class AllPokemonSerializer
  include FastJsonapi::ObjectSerializer
  
  attributes :pokemon_id, :name, :types
end
