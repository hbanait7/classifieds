class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  include SessionsHelper

  
  def authenticate
    unless logged_in?
      flash[:notice] = 'You Must Login First'
      redirect_to login_path
    end
  end

end
