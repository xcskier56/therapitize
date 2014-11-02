class VisitorsController < ApplicationController
  include VisitorsHelper
  
  def index
    if signed_in?
     redirect_to current_user
      @user = User.find(current_user)
    else
      @user = User.new
    end
  end
end
