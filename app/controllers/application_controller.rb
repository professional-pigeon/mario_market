class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  protected
  helper_method :is_admin?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:update, keys: [:admin])
  end
end
