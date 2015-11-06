class PlayersController <<ApplicationController

    def index
      @players = Player.all
    end

    def new
      @player = Player.new
    end

    def create
      player = player.new(player_params)
      if player.save
        redirect_to '/characters'
      else
        redirect_to new_player_path
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
