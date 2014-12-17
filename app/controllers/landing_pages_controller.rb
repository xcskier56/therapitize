class LandingPagesController < ApplicationController
  layout 'landing'
  
  def home
      @user = User.new
  end
end
