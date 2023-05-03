class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    added_attrs = [:username, :email, :password, :password_confirmation, :remember_me]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :sign_in, keys: [:login, :password]
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end

    #ログイン後のリダイレクト先
    def after_sign_in_path_for(resource)
      '/static_pages/home'
    end 
    #ログアウト後のリダイレクト先
    def after_sign_out_path_for(resource)
      '/static_pages/home'
    end 
    
end