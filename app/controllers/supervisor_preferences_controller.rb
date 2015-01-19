class SupervisorPreferencesController < ApplicationController
  before_filter :authenticate_user!

  def update
    @preferences = SupervisorPreferences.find(params[:id])
    @user = @preferences.user

    if @preferences.update_attributes(update_params)
      respond_to do |format|
        flash[:notice] = "Profile Updated"
        format.html { redirect_to request.referrer }
      end
    else
      respond_to do |format|
        flash[:error] = "Sorry, something went wrong"
        format.html { redirect_to request.referrer }
      end
    end
  end


  private
    def update_params
      params.require(:supervisor_preferences).permit( 
        :favorite_theorist, :lsw, :msw, :licsw, 
        :lmft, :lpcc, :lp, :hourly_rate, :group_rate,
        :license_number, :years_practicing, 
        :current_candidates, :max_candidates
      )
    end


end