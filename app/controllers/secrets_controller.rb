class SecretsController < ApplicationController
  before_action :logged_in_redirect
  
  def welcome

  end

  private

  def logged_in_redirect
    redirect_to root_path unless logged_in?
  end
end
