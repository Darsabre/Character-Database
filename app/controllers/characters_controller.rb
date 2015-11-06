class CharactersController <<ApplicationController

    before_action :authorize, except: [:index]

    def index
      @characters = Character.all
    end


    def new
      @character = Character.new

      id = session[:player_id]
      @player = Player.find(id)

    end

    def create
      character = Character.create(character_params)
      character.player_id = current_player.id
      if character.save
        redirect_to '/characters'
      else
        redirect_to '/characters/new'
      end
    end

    def edit
      @character = Character.find(params[:id])
    end

    def update
      character = Character.find(params[:id])
      if character.update(character_params)
        redirect_to '/characters'
      else
        redirect_to '/characters/edit'
      end
    end

    def destroy
      character = Character.find(params[:id])
      character.destroy
      redirect_to '/characters'
    end

    private

    def character_params
      params.require(:character).permit(
        :title,
        :body
      )
    end
  end
