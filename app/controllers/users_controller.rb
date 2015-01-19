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
    if @user.update_attributes(user_params)
      respond_to do |format|
        flash[:notice] = "Profile Updated"
        format.html { redirect_to request.referrer }
      end
    else
      respond_to do |format|
        flash[:notice] = "Sorry, something went wrong"
        format.html { redirect_to request.referrer }
      end
    end
  end

  private

    def user_params
      params.require(:user).permit(:zip, :street_address, :first_name, :last_name, :normal_phone, :gender )
    end

end
