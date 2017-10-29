class TransportationsController < ApplicationController

  def create
    app_trip
    @transportation = Transportation.create(
      trip_id: @trip.id,
      transpo_type: params[:transpo_type],
      transpo_name: params[:transpo_name],
      traveling_from: params[:traveling_from],
      traveling_to: params[:traveling_to],
      depart_date: params[:depart_date],
      arrive_date: params[:arrive_date],
      depart_time: params[:depart_time],
      arrive_time: params[:arrive_time],
      notes: params[:notes],
      price: params[:price]
      )
    redirect_to "/trips/#{@trip.id}"  
  end

end
