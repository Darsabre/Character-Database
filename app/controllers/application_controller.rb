class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_player
    @current_player ||= Player.find(session[:player_id]) if session[:player_id]
  end
  helper_method(:current_player)

  def authorize
    redirect_to '/login' unless current_player
  end
end
