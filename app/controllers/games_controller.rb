class GamesController < ApplicationController
  # Add your GamesController code here
  def create
    @game = Game.new(state: params[:state])
    @game.save
  end

  def show
    @game = Game.find(params[:id])
  end

  def update

  end

  def index

  end

end
