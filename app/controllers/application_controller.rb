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
    p "APP_TRIP #{current_user.trips.find(params[:trip_id])}" #for testing
    @trip = current_user.trips.find(params[:trip_id])
  end

  def app_board
    p "APP_BOARD #{app_trip.boards.find(params[:board_id])}"
    @board = app_trip.boards.find(params[:board_id])
  end

  def app_item
    p "APP_ITEM #{app_board.items.find(params[:item_id])}"
    @item = app_board.items.find(params[:item_id])
  end

end
