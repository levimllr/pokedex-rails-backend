class Api::V1::PokemonController < ApplicationController
    before_action :find_pokemon, only: [:show]

    def index
        @pokemon = Pokemon.all 

        if params["type"]
            if params["type"] == "all"
                render json: @pokemon,
                include: [
                    types: {only: [:id, :name]}, 
                    pokemon_types: {only: [:slot], include: [type: {only: [:id, :name]}]}
                ]
                return
            else
                @pokemon = @pokemon.select do |pokemon|
                    pokemon.types.map{|type| type.name}.include?(params["type"])
                end
            end
        end
        
        render json: @pokemon
    end
    
    def show
        render json: @pokemon
    end

    private

    def find_pokemon
        @pokemon = Pokemon.find(:id)
    end
end
