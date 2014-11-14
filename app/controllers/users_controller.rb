class UsersController < ApplicationController
  before_filter :authenticate_user!


  def index
    @users = User.all
    respond_to do |format|
      format.html
    end
  end

  def show
    @user = current_user
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(user_params)
  end

  private

    def user_params
      params.require(:user).permit(:zip, :address)
    end

end
