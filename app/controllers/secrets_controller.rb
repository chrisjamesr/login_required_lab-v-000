class SecretsController < ApplicationController
  before_action :logged_in_redirect
  
  def show

  end

  private

  def logged_in_redirect
    redirect_to login_path unless logged_in?
  end
end
