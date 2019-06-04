class GamesController < ApplicationController
  # Add your GamesController code here
  def create
    @game = Game.new(state: params[:state])
    @game.save
  end

  def show
    @game = Game.find(params[:id])
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

end
