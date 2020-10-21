class PagesController < ApplicationController
  before_action :check_for_login

  def home
    @trips = @current_user.trips
  end
end
