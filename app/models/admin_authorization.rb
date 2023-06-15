class AdminAuthorization < ActiveAdmin::AuthorizationAdapter 
  
  def authorized?(action, subject = nil)
    # si el user está logueado y es admin?
    user && user.admin?
  end
end