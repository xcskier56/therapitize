class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to :back, :alert => "Access denied."
    end
  end

#Friendly_ID Update
  class UserController < ApplicationController
  def index
    @posts = User.all
  end

  def show
    @post = User.find(params[:id])
  end
end

end
