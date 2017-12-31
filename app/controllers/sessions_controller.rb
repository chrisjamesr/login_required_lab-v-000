class SessionsController < ApplicationController
  def new
  end

  def create
    
    if params[:user_name].present?
      session[:user_name] = params[:user_name]
      redirect_to root_path
    else 
      redirect_to login_path  
    end
  end

  def destroy
    session.delete :user_name
    redirect_to root_path
  end

  def welcome
    redirect_to login_path unless logged_in?
  end 
end
