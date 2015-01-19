class StudentPreferencesController < ApplicationController
  before_filter :authenticate_user!

  def update
    @preferences = StudentPreferences.find(params[:id])
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
      params.require(:student_preferences).permit( 
        :favorite_theorist, :lsw, :msw, :licsw, 
        :lmft, :lpcc, :lp, :hourly_rate, :group_rate,
        :start_date, :completion_date, :hrs_needed
      )
    end
end