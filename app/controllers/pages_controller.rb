class PagesController < ApplicationController
  before_action :check_for_login

  def home
    @trips = @current_user.trips
    @user = User.find_by (params[:id])
  end

end
