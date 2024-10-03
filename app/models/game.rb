class Game < ApplicationRecord
  has_many :game_movements, dependent: :destroy
end
