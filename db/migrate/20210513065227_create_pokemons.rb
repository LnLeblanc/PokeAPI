class CreatePokemons < ActiveRecord::Migration[6.1]
  def change
    create_table :pokemons do |t|
      t.integer :id
      t.string :name
      t.integer :base_experience
      t.integer :height
      t.integer :weight
      t.references :type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
