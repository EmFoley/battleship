class PlayersController < ApplicationController
  helper_method :need_more_players?

  def create
    @player = Player.new
    if @player.save
      session[:player] = @player.id
      redirect_to root_path
    else
      redirect_to root_path
    end
  end


end