class BoardsController < ApplicationController

  before_action :authenticate_user!

  def new

  end

  def create
    app_trip
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
    app_board
    @board.update(
      board_title: params[:board_title]
      )
    flash[:success] = "Board Updated"
    redirect_to "/trips/#{@trip.id}"
  end

  def destroy
    app_board
    @board.destroy
    # flash[:warning] = "Board Deleted"
    redirect_to "/trips/#{@trip.id}"
  end

end
