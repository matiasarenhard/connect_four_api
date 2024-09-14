NUM_GAMES = 5
PLAYER_ONE = "John"
COLOR_PLAYER_ONE = "Red"
PLAYER_TWO = "Jane"
COLOR_PLAYER_TWO = "Yellow"

def create_game_with_movements(game_params, movements)
  game = Game.create!(game_params)
  movements.each { |movement| GameMovement.create!(movement.merge(game_id: game.id)) }
end

NUM_GAMES.times do
  game_params = {
    player_one: PLAYER_ONE,
    color_player_one: COLOR_PLAYER_ONE,
    player_two: PLAYER_TWO,
    color_player_two: COLOR_PLAYER_TWO
  }

  game_movements = [
    { player: PLAYER_ONE, row: 0, column: 0 },
    { player: PLAYER_TWO, row: 1, column: 1 }
  ]

  create_game_with_movements(game_params, game_movements)
end

puts <<~ASCII
          
          ***          **********          ***
       *****           **********           *****
     *******           **********           *******
   **********         ************         **********
  ****************************************************
 ******************************************************
********************************************************
********************************************************
********************************************************
 ******************************************************
  ********      ************************      ********
   *******       *     *********      *       *******
     ******             *******              ******
       *****             *****              *****
          ***             ***              ***
            **             *              **
ASCII

              
