# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

pokeapi_URL = "https://pokeapi.co/api/v2/"
poke_num = 1

while poke_num <= 151 do
    pokemon_response = RestClient.get(pokeapi_URL + "pokemon/#{poke_num}")
    pokemon_response_hash = JSON.parse(pokemon_response.body)

    pokemon_response_hash["pokemon_id"] = pokemon_response_hash.delete("id")

    species_response = RestClient.get(pokeapi_URL + "pokemon-species/#{poke_num}")
    species_response_hash = JSON.parse(species_response.body)
    flavor_text_hash_array = species_response_hash["flavor_text_entries"].filter do |entry|
        entry["language"]["name"] == "en"
    end
    flavor_text = flavor_text_hash_array.first["flavor_text"].split("\n").join(" ")
    pokemon_response_hash["flavor_text"] = flavor_text

    new_pokemon = Pokemon.create(pokemon_response_hash)

    poke_num += 1
end
