class TripsController < ApplicationController

  before_action :authenticate_user!

  def index
    @trips = current_user.trips.order(:start_date)
    @trip = @trips.find_by(id: params[:id])
    render :index
  end

  def show
    @trip = current_user.trips.find_by(id: params[:id])
  end

  def new
    @trip = Trip.new
  end

  def create
    # coordinates = Geocoder.coordinates(params[:address])
    @trip = Trip.create(
      user_id: current_user.id,
      trip_title: params[:trip_title],
      # latitude: coordinates[0],
      # longitude: coordinates[1],
      start_date: params[:start_date],
      end_date: params[:end_date]
      )
    flash[:success] = "Trip Created"
    redirect_to "/trips/#{@trip.id}"
  end

  def edit
    @trips = current_user.trips
    @trip = @trips.find_by(id: params[:id])
  end

  def update
    # coordinates = Geocoder.coordinates(params[:address])
    trips = current_user.trips
    trip = trips.find_by(id: params[:id])
    trip.update(
      trip_title: params[:trip_title],
      # latitude: coordinates[0],
      # longitude: coordinates[1],
      start_date: params[:start_date],
      end_date: params[:end_date]
      )
    flash[:success] = "Trip Updated"
    redirect_to "/trips/#{trip.id}"
  end

  def destroy
    @trip = Trip.find_by(id: params[:id])
    @trip.destroy
    flash[:warning] = "Trip Deleted"
    redirect_to "/trips"
  end

end
