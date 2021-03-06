class ApplicationController < ActionController::Base
  protect_from_forgery

  helper ApplicationHelper
  
  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  helper_method :current_user

  def current_post #notworking
  	@current_post ||= Post.find(session[:post_id]) if session[:post_id]
  end

end