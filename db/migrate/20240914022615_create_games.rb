class CreateGames < ActiveRecord::Migration[7.1]
  def change
    create_table :games do |t|
      t.string :result
      t.string :player_one
      t.string :color_player_one
      t.string :player_two
      t.string :color_player_two

      t.timestamps
    end
  end
end
