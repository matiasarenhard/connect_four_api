class AddKindToGames < ActiveRecord::Migration[7.1]
  def change
    add_column :games, :kind, :string
  end
end
