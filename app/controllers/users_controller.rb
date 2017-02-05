class UsersController < ApplicationController

  def index
    users = User.all
  end

  def create
    user = User.find(params[:id])
  end

  def destroy
  end


  private
  # Only allow a trusted parameter "white list" through.
  def user_params
    params.require(:user).permit(:username, :password)
  end
end
