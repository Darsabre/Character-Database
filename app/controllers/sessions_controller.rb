class SessionsController < ApplicationController

  def new

  end

  def create
    player = Player.find_by(player_name: params[:player_name])
    if player && player.authenticate(params[:password])
      session[:player_id] = player.id
      redirect_to "/characters"
    else
      redirect_to "/login"
    end
  end

  def destroy
    session[:player_id] = nil
    redirect_to "/login"
  end

end
