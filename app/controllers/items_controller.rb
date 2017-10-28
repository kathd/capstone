class ItemsController < ApplicationController

  def show
    app_item # from ApplicationController
  end

  def new
    @item = Item.new
  end

  def create
    app_board # from ApplicationController
    @item = Item.create(
      board_id: @board.id,
      item_type: params[:item_type],
      description: params[:description],
      time: params[:time],
      longitude: params[:longitude],
      latitude: params[:latitude],
      price: params[:price]
      )
    redirect_to "/trips/#{@trip.id}"
  end

  def update
    app_item # from ApplicationController
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
    app_item
    @item.destroy
    flash[:warning] = "Item Deleted"
    redirect_to "/trips/#{@trip.id}"
  end
  
end
