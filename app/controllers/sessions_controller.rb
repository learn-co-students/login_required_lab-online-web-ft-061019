class SessionsController < ApplicationController
  def new
  end

  def create
    if params.has_key?("name")
      if params[:name].empty?
        redirect_to root_path
      else 
        session[:name] = params[:name]
        redirect_to secrets_show_path
      end
    else
      redirect_to root_path
    end
  end

  def destroy
    session.delete :name
    redirect_to root_path
  end

  
end
