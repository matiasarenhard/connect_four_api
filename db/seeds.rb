NUM_GAMES = 5
PLAYER_ONE = "John"
IMAGE_PLAYER_ONE = "batman.png"
PLAYER_TWO = "Jane"
IMAGE_PLAYER_TWO = "Coringa.png"
KIND_GAMES = ["connect_four", "tic_tac_toe"]

def create_game_with_movements(game_params, movements)
  game = Game.create!(game_params)
  movements.each { |movement| GameMovement.create!(movement.merge(game_id: game.id)) }
end

NUM_GAMES.times do
  game_params = {
    player_one: PLAYER_ONE,
    image_player_one: IMAGE_PLAYER_ONE,
    player_two: PLAYER_TWO,
    image_player_two: IMAGE_PLAYER_TWO,
    kind: KIND_GAMES.sample
  }

  grid_range = game_params[:kind] == "connect_four" ? (0..6) : (0..3)
  available_positions = grid_range.to_a.product(grid_range.to_a).shuffle

  game_movements = [
    { player: PLAYER_ONE, row: available_positions.pop[0], column: available_positions.pop[1] },
    { player: PLAYER_TWO, row: available_positions.pop[0], column: available_positions.pop[1] }
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

              
