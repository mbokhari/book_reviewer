class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :require_login

  def not_authenticated
    redirect_to login_url, :alert => "You must sign up or login to access this page."
  end
  
  def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    rescue ActiveRecord::RecordNotFound
  end
  
end
