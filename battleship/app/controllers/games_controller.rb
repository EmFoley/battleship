require 'active_gameboard'

class GamesController < ApplicationController
  helper_method :game_loaded?, :need_more_players?
  
  def index
    if session[:player]
      @player = Player.find(session[:player])
    else
      @player = Player.new
    end
  end

  def create
    @game = Game.new
    if @game.save
      Player.all.map {|player| player.update_attributes(game: @game)}
      @game.start_game
      redirect_to play_game_path
    else
      redirect_to root_path
    end
  end


  def play_game
    @game = Game.find(1)
    @player = Player.find(session[:player])
    @board = @player.boards.last
    @active_gameboard = ActiveGameboard.new(ships: @board.ships).call
  end

  def update_game
  end


  def game_loaded?
    Game.exists?(1)
  end

  def need_more_players?
    Player.all.count < 2
  end
end