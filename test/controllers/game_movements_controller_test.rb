require "test_helper"

class GameMovementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @game_movement = game_movements(:one)
  end

  test "should get index" do
    get game_movements_url, as: :json
    assert_response :success
  end

  test "should create game_movement" do
    assert_difference("GameMovement.count") do
      post game_movements_url, params: { game_movement: { column: @game_movement.column, game_id: @game_movement.game_id, player: @game_movement.player, row: @game_movement.row } }, as: :json
    end

    assert_response :created
  end

  test "should show game_movement" do
    get game_movement_url(@game_movement), as: :json
    assert_response :success
  end

  test "should update game_movement" do
    patch game_movement_url(@game_movement), params: { game_movement: { column: @game_movement.column, game_id: @game_movement.game_id, player: @game_movement.player, row: @game_movement.row } }, as: :json
    assert_response :success
  end

  test "should destroy game_movement" do
    assert_difference("GameMovement.count", -1) do
      delete game_movement_url(@game_movement), as: :json
    end

    assert_response :no_content
  end
end
