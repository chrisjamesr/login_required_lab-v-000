class SessionsController < ApplicationController
  def new
  end

  def create
    raise params.inspect
  end

  def destroy
    
  end

  def welcome
    redirect_to login_path unless logged_in?
  end 
end
