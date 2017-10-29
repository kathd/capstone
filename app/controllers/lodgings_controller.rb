class LodgingsController < ApplicationController

  before_action :authenticate_user!

  def show
    app_trip
    @lodging = @trip.lodgings.find(params[:lodging_id])
  end

  def create
    app_trip
    @lodging = Lodging.create(
      trip_id: @trip.id,
      lodging_name: params[:lodging_name],
      longitude: params[:longitude],
      latitude: params[:latitude],
      checkin_date: params[:checkin_date],
      checkout_date: params[:checkout_date],
      notes: params[:notes],
      price: params[:price]
      )
    redirect_to "/trips/#{@trip.id}"
  end

end
