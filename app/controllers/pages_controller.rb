class PagesController < ApplicationController
  def home
    @trips = @current_user.trips
  end
end
