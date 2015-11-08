class PlayersController < ApplicationController

    def index
      @players = Player.all
    end

    def new
      @player = Player.new
    end

    def show
        @player = 'players/index'
      end

    def create
      @player = Player.new(player_params)
      redirect_to '/players'
    end

    private

    def player_params
      params.require(:player).permit(
        :player_name,
        :password,
        :password_confirmation
      )
    end
end
