# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

pokeapi_URL = "https://pokeapi.co/api/v2/"
poke_num = 1

type_response = RestClient.get(pokeapi_URL + "type")
type_response_hash = JSON.parse(type_response.body)
type_response_hash["results"].each do |type|
    Type.create(name: type["name"])
end

while poke_num <= 151 do
    pokemon_response = RestClient.get(pokeapi_URL + "pokemon/#{poke_num}")
    pokemon_response_hash = JSON.parse(pokemon_response.body)
    species_response = RestClient.get(pokeapi_URL + "pokemon-species/#{poke_num}")
    species_response_hash = JSON.parse(species_response.body)
    pokemon_create_hash = {
        number: pokemon_response_hash["id"],
        name: pokemon_response_hash["name"],
        height: pokemon_response_hash["height"],
        weight: pokemon_response_hash["weight"],
        flavor_text: species_response_hash["flavor_text_entries"][1]["flavor_text"],
        image_url: pokemon_response_hash["sprites"]["front_default"]
    }

    new_pokemon = Pokemon.find_by(number: pokemon_create_hash[:number])
    if !new_pokemon
        new_pokemon = Pokemon.create(pokemon_create_hash)
    else
        new_pokemon.update(pokemon_create_hash)
    end
    
    pokemon_response_hash["types"].each do |type|
        type_instance = Type.find_by(name: type["type"]["name"])
        slot = type["slot"]
        # byebug
        PokemonType.create(pokemon: new_pokemon, type: type_instance, slot: slot)
    end

    poke_num += 1
end
