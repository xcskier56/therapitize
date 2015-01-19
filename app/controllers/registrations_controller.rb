class RegistrationsController < Devise::RegistrationsController
  before_filter :configure_permitted_parameters

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) do |u|
        u.permit(:first_name, :last_name,
          :email, :password, :password_confirmation, :user_type)
      end
    end

    def after_sign_up_path_for(resource)
      welcome_path
    end

end