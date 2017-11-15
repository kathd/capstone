class TablesController < ApplicationController

  def index
    @trip = current_user.trips.find(params[:trip_id])
    @boards = @trip.boards
    render :index
  end

end
