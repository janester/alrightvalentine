class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :logged_in

  private
  def logged_in
    session[:user_id].present? ? @current_user = User.find(session[:user_id]) : @current_user = nil
  end
end
