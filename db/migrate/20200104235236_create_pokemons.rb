class CreatePokemons < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.integer :height
      t.integer :weight
      t.string :flavor_text_entries
      t.string :image_url

      t.timestamps
    end
  end
end
