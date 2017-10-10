class TripsController < ApplicationController

  before_action :authenticate_user!

  def index
    if current_user
      @trips = current_user.trips
      render :index
    else
      flash[:warning] = "Please log in."
      redirect_to "/login"
    end
  end

  def show
    @trip = current_user.trips.find(params[:id])
    @boards = @trip.boards
  end

  def new
    
  end

  def create
    coordinates = Geocoder.coordinates(params[:address])
    @trip = Trip.create(
      trip_title: params[:trip_title],
      latitude: coordinates[0],
      longitude: coordinates[1],
      start_date: params[:start_date],
      end_date: params[:end_date]
      )
    flash[:success] = "Trip Created"
    redirect_to "/trips/#{@trip.id}"
  end

  def edit
    @trip = Trip.find_by(id: params[:id])
  end

  def update
    # coordinates = Geocoder.coordinates(params[:address])
    trip = Trip.find_by(id: params[:id])
    trip = Trip.update(
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
    flash[:warning] = "Product Destroyed"
    redirect_to "/trips"
  end

end
