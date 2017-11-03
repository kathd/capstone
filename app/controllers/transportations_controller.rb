class TransportationsController < ApplicationController

  before_action :authenticate_user!

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

end
