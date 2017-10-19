class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end
  
  helper_method :current_user

  def authenticate_user!
    redirect_to "/login" unless current_user
  end

  def app_trip
    @trip = current_user.trips.find(params[:trip_id])
  end

  def app_board
    @board = app_trip.boards.find(params[:board_id])
    
  end

  def app_item
    @item = app_board.items.find(params[:item_id])
  end

end
