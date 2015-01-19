class WelcomeController < ApplicationController

  def welcome
    @user = current_user
  end

  def welcome2
    @user = current_user
  end
end