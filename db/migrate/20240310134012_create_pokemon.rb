class CreatePokemon < ActiveRecord::Migration[7.1]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :pokemon_type
      t.timestamps
    end
  end
end
