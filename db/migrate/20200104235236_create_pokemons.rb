class CreatePokemons < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemons do |t|
      # t.integer :number
      # t.string :name
      # t.integer :height
      # t.integer :weight
      # t.string :flavor_text
      # t.string :image_url
      # t.string :type_1
      # t.string :type_2
      # t.string :color
      
      t.jsonb :abilities, array: true
      t.integer :base_experience
      t.jsonb :forms, array: true
      t.jsonb :game_indices, array: true
      t.integer :height
      t.jsonb :held_items, array: true
      t.integer :pokemon_id 
      t.boolean :is_default
      t.string :location_area_encounters
      t.jsonb :moves, array: true
      t.string :name
      t.integer :order
      t.jsonb :species
      t.jsonb :sprites
      t.jsonb :stats, array: true
      t.jsonb :types, array: true
      t.integer :weight

      t.timestamps
    end
  end
end
