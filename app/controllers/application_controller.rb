class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def configure_permitted_parameters
  	devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  	devise_parameter_sanitizer.permit(:account_updates, keys: [:name])
  end
end
