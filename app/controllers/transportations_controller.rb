class TransportationsController < ApplicationController

  before_action :authenticate_user!

  def show
    app_trip
    @transportation = @trip.transportations.find(params[:transportation_id])
  end

  def create
    app_trip
    @transportation = Transportation.create(
      trip_id: @trip.id,
      transpo_type: params[:transpo_type],
      transpo_name: params[:transpo_name],
      depart_date: params[:depart_date],
      depart_time: params[:depart_time],
      notes: params[:notes],
      price: params[:price]
      )
    redirect_to "/trips/#{@trip.id}"  
  end

  def destroy
    app_trip # from ApplicationController
    @transportation = @trip.transportations.find(params[:transportation_id])
    @transportation.destroy
    flash[:warning] = "Transportation Deleted"
    redirect_to "/trips/#{@trip.id}"
  end

end
