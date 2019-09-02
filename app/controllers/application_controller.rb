class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def logged_in? 
    if !!session[:name]
      current_user
    else
      redirect_to root_path
    end
  end

  def current_user
    @user = session[:name]
  end
end
