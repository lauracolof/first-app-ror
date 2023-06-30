class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  def access_denied(exception)
    # redirigir al root with an alert if the user try access to a place they cant
    redirect_to root_path, alert: exception.message
  end

  protected 

  def configure_permitted_parameters
    devise_parameters_sanitizer.permite(:sign_up, keys: [:username, :name])
  end
end
