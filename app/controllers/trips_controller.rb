class TripsController < ApplicationController
  def index
    @trips = Trip.where(:user_id => @current_user.id)
  end

  def new
    @trip = Trip.new
  end

  def create
    trip = Trip.create trip_params
    @current_user.trips << trip
    redirect_to trip
  end

  def edit
    @trip = Trip.find params[:id]
  end

  def show
    @trip = Trip.find params[:id]
    @items = @trip.items
  end

  def update
    trip = Trip.find params[:id]
    trip.update trip_params
    redirect_to trip
  end

  def destroy
    trip = Trip.find params[:id]
    trip.destroy
    redirect_to trip_path
  end

  private
  def trip_params
    params.require(:trip).permit(:title, :start_date, :end_date, :image, :user_id)
  end
end
