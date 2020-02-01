# frozen_string_literal: true

class ApplicationController < ActionController::Base
  helper_method :current_user
  helper_method :logged_in?
  helper_method :logout

  def current_user
    User.find_by(id: session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end

  def set_user
    redirect_to controller: "users", action: "login" unless logged_in?
    @user = current_user
  end
end
