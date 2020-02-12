class Api::V1::PokemonController < ApplicationController
    before_action :find_pokemon, only: [:show]

    def index
        @pokemon = Pokemon.all 

        render json: AllPokemonSerializer.new(@pokemon)
    end
    
    def show
        render json: OnePokemonSerializer.new(@pokemon)
    end

    private

    def find_pokemon
        @pokemon = Pokemon.find_by(pokemon_id: params[:id])
    end
end
