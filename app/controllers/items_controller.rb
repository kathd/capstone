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
      link: params[:link],
      description: params[:description],
      price: params[:price]
      )
    redirect_to "/trips/#{@trip.id}"
  end

  def update
    app_trip
    @item = Item.find(params[:item_id])
    if params[:item_title] or params[:description] or params[:price] or params[:link]
      @item.update(
        item_title: params[:item_title],
        link: params[:link],
        description: params[:description],
        price: params[:price]
        )
      flash[:success] = "Item Updated"
    elsif params[:board_id]
      @item.update(
        board_id: params[:board_id]
        )
      flash[:success] = "Item Moved"
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
