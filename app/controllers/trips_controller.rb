class TripsController < ApplicationController
  def index
    @trips = Trip.all
  end

  def new
    @trip = Trip.new
  end

  def create
    trip = Trip.create trip_params
    redirect_to trip
  end

  def edit
    @trip = Trip.find params[:id]
  end

  def show
    @trip = Trip.find params[:id]
  end

  def update
    trip = Trip.find params[:id]
    trip.update trip_params
    redirect_to trip
  end

  def destroy
    trip = Trip.find params[:id]
    trip.destroy
    redirect_to trips_path
  end

  private
  def trip_params
    params.require(:trip).permit(:title, :date, :user_id)
  end
end
