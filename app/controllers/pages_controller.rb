class PagesController < ApplicationController
  def home
    @current_user = User.find session[:user_id]
  end
end
