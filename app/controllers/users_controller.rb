class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find params[:id]
  end

  def create
    @user = User.create(user_params)
    if @user.save
        redirect_to users_path(@users)
    else
        redirect_to new_user_path(:user_id)
    end
  end

  def destroy
  end


  private
  # Only allow a trusted parameter "white list" through.
  def user_params
    params.require(:user).permit(:username, :password)
  end
end
