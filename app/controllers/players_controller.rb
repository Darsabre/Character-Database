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
        player = Player.create(player_params)
        if player.save
          redirect_to '/players'
        else
          redirect_to '/players/new'
        end
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
