class GameMovementsController < ApplicationController
  before_action :set_game_movement, only: %i[ show update destroy ]

  # GET /game_movements
  def index
    @game_movements = GameMovement.all

    render json: @game_movements
  end

  # GET /game_movements/1
  def show
    render json: @game_movement
  end

  # POST /game_movements
  def create
    @game_movement = GameMovement.new(game_movement_params)

    if @game_movement.save
      render json: @game_movement, status: :created, location: @game_movement
    else
      render json: @game_movement.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /game_movements/1
  def update
    if @game_movement.update(game_movement_params)
      render json: @game_movement
    else
      render json: @game_movement.errors, status: :unprocessable_entity
    end
  end

  # DELETE /game_movements/1
  def destroy
    @game_movement.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_movement
      @game_movement = GameMovement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def game_movement_params
      params.require(:game_movement).permit(:player, :row, :column, :game_id)
    end
end
