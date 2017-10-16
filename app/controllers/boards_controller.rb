class BoardsController < ApplicationController

  before_action :authenticate_user!

  def new

  end

  def create
    @trip = current_user.trips.find(params[:trip_id])
    @board = Board.create(
      trip_id: @trip.id,
      board_title: params[:board_title]
      )
    # flash[:success] = "Board Created"
    redirect_to "/trips/#{@trip.id}"
  end

  def edit

  end

  def update
    trip = current_user.trips.find(params[:trip_id])
    board = trip.boards.find(params[:board_id])
    board.update(
      board_title: params[:board_title]
      )
    flash[:success] = "Board Updated"
    redirect_to "/trips/#{trip.id}"
  end

  def destroy
    @trip = current_user.trips.find(params[:trip_id])
    @board = @trip.boards.find(params[:board_id])
    @board.destroy
    # flash[:warning] = "Board Deleted"
    redirect_to "/trips/#{@trip.id}"
  end

end
