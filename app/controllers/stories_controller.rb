class StoriesController < ApplicationController
  before_action :authorize, except: [:index]

    def index
      @Stories = Story.all
    end

    def new
      @post = Story.new

      id = session[:player_id]
      @player = Player.find(id)

    end

    def create
      post = Story.create(post_params)
      post.player_id = current_player.id
      if post.save
        redirect_to '/Stories'
      else
        redirect_to '/Stories/new'
      end
    end

    def edit
      @post = Story.find(params[:id])
    end

    def update
      post = Story.find(params[:id])
      if post.update(post_params)
        redirect_to '/Stories'
      else
        redirect_to '/Stories/edit'
      end
    end

    def destroy
      post = Story.find(params[:id])
      post.destroy
      redirect_to '/Stories'
    end

    private

    def post_params
      params.require(:post).permit(
        :title,
        :body
      )
    end
end
