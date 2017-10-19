class ItemsController < ApplicationController

  def show
    app_item # from ApplicationController, delete if not working
  end

  def new
    @item = Item.new
  end

  def create
    app_board
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
    app_item
    @item.update(
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
