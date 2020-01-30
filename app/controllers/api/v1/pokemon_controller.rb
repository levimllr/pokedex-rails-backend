class Api::V1::PokemonController < ApplicationController
    before_action :find_pokemon, only: [:show]

    def index
        @pokemon = Pokemon.all 
        render json: @pokemon,
            include: [
                types: {only: [:id, :name]}, 
                pokemon_types: {only: [:slot], include: [type: {only: [:id, :name]}]}
            ]
    end
    
    def show
        render json: @pokemon
    end

    private

    def find_pokemon
        @pokemon = Pokemon.find(:id)
    end
end
