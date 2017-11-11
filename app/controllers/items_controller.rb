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
      item_title: params[:item_title],
      description: params[:description],
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
    else  
      @item.update(
        item_title: params[:item_title],
        description: params[:description],
        price: params[:price]
        )
    end
    flash[:success] = "Item Updated"
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
