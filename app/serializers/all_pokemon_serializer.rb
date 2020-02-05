class AllPokemonSerializer
  include FastJsonapi::ObjectSerializer

  set_type :pokemon
  set_id :pokemon_id
  
  attributes :pokemon_id, :name, :types
end
