class ItemsController < ApplicationController
  before_action :check_for_login

  def index
    @items = Item.where(:trip_id => @current_user.id)
  end

  def new
    @item = Item.new
  end

  def create
    item = Item.create item_params
    redirect_to trip
  end

  def edit
    @item = Item.find params[:id]
  end

  def show
    @trip = Trip.find params[:id]
    @items = @trip.items
  end

  def update
    item = Item.find params[:id]
    item.update item_params
    redirect_to item
  end

  def destroy
    item = Item.find params[:id]
    item.destroy
    redirect_to items_path
  end

  private
  def item_params
    params.require(:item).permit(:title, :accomodation, :activity, :transport, :insurance, :misc)
  end
end
