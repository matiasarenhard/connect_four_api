class CreateGameMovements < ActiveRecord::Migration[7.1]
  def change
    create_table :game_movements do |t|
      t.string :player
      t.integer :row
      t.integer :column
      t.references :game, null: false, foreign_key: true

      t.timestamps
    end
  end
end
