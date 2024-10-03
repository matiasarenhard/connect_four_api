class UpdateColumnsName < ActiveRecord::Migration[7.1]
  def change
    rename_column :games, :color_player_one, :image_player_one
    rename_column :games, :color_player_two, :image_player_two
  end
end
