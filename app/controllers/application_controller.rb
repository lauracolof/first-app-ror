class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def access_denied(exception)
    # redirigir al root with an alert if the user try access to a place they cant
    redirecto_to root_path, alert: exception.message
  end

end
