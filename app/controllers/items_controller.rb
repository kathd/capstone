class ItemsController < ApplicationController

  before_action :authenticate_user!
  
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
      price: params[:price]
      )
    redirect_to "/trips/#{@trip.id}"
  end

  def update
    # conditional - for move and edit 
    app_trip
    @item = Item.find(params[:item_id])
    if @item.board_id != params[:board_id]
      @item.update(
        board_id: params[:board_id]
        )
      flash[:success] = "Item Moved"
    else
      @item.update(
        item_type: params[:item_type],
        description: params[:description],
        time: params[:time],
        price: params[:price]
        )
      flash[:success] = "Item Updated"
    end
    redirect_to "/trips/#{@trip.id}"
  end

  def destroy
    app_item
    @item.destroy
    flash[:warning] = "Item Deleted"
    redirect_to "/trips/#{@trip.id}"
  end

  # def move
  #   app_item
  #   @item.update(
  #     board_id: params[:board_id]
  #     )
  #   redirect_to "/trips/#{@trip.id}"
  # end
  
end
