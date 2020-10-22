class UsersController < ApplicationController
  before_action :check_for_admin, :only => [:index]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      @user.profile_image = req["public_id"]
      @user.save
    end
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(:profile_image, :username, :name, :dob, :email, :password, :password_confirmation)
  end
end
