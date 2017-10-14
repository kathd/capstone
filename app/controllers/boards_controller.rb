class BoardsController < ApplicationController

  before_action :authenticate_user!

  def new
    
  end

  def create
    @trip = current_user.trips.find(params[:id])
    @board = Board.create(
      trip_id: @trip.id,
      board_title: params[:board_title]
      )
    flash[:success] = "Board Created"
    redirect_to "/trips/#{@trip.id}"
  end

  def edit
    @trip = current_user.trips.find(params[:id])
    @board = @trip.boards.find(params[:id])
  end

  def update
    @trip = current_user.trips.find(params[:id])
    @board = Board.update(
      trip_id: @trip.id,
      board_title: params[:board_title]
      )
    # flash[:success] = "Board Updated"
    redirect_to "/trips/#{@board.id}"
  end

  def destroy
    @boards = current_user.trips.find(params[:id]).boards
    @board = @boards.find(params[:id])
    @board.destroy
    flash[:warning] = "Board Deleted"
    redirect_to "/trips"
  end

end
