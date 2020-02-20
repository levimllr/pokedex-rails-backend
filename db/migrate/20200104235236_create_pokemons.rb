class CreatePokemons < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemons do |t|
      
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
      t.string :flavor_text

      t.timestamps
    end
  end
end
