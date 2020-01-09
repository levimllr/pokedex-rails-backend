class CreatePokemons < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemons do |t|
      t.integer :number
      t.string :name
      t.integer :height
      t.integer :weight
      t.string :flavor_text
      t.string :image_url

      t.timestamps
    end
  end
end
