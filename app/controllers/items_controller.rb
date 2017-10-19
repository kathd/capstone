class ItemsController < ApplicationController

  def show
    @trip = current_user.trips.find(params[:trip_id])
    @board = @trip.boards.find(params[:board_id])
    @item = @board.items.find(params[:item_id])
  end

  def new
    @item = Item.new
  end

  def create
    @trip = current_user.trips.find(params[:trip_id])
    @board = @trip.boards.find(params[:board_id])
    @item = Item.create(
      board_id: @board.id,
      item_type: params[:item_type],
      notes: params[:notes],
      time: params[:time],
      longitude: params[:longitude],
      latitude: params[:latitude],
      image_url: params[:image_url],
      price: params[:price]
      )
    redirect_to "/trips/#{@trip.id}"
  end

  def update
    trip = current_user.trips.find(params[:trip_id])
    board = trip.boards.find(params[:board_id])
    item = board.items.find(params[:item_id])
    item.update(
      board_id: @board.id,
      item_type: params[:item_type],
      notes: params[:notes],
      time: params[:time],
      longitude: params[:longitude],
      latitude: params[:latitude],
      image_url: params[:image_url],
      price: params[:price]
      )
    redirect_to "/trips/#{@trip.id}"
  end

  def destroy
    
  end
  
end
