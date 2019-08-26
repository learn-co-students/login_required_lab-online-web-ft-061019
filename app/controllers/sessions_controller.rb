class SessionsController < ApplicationController 

    def new 
    end 

    def create 
        session[:name] = params[:name]
        if session[:name].nil? || session[:name].empty?
            redirect_to '/login'
        elsif session[:name] = params[:name]
            redirect_to '/'
        end 
    end 

    def destroy 
        if !session[:name].nil?
        session.delete :name            #logout a user
        end 
    end 
end 