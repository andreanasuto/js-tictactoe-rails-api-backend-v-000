class GamesController < ApplicationController
  # Add your GamesController code here
  before_action :set_game, only: [:show, :update]

  def create
    @game = Game.new(state: params[:state])
    @game.save
  end

  def show
    render json: @game
  end

  def update
    @game.update(game_params)
    render json: @game
  end

  def index
    @games = Game.all
    render json: @games
  end

  private

  def game_params
    params.permit(state: [])
  end

  def setGame
    @game = Game.find(params[:id])
  end

end
