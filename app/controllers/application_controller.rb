class ApplicationController < ActionController::Base
	include SessionsHelper

	private

	def logged_in?
		current_user ||= User.find(session[:user_id]) if session[:user_id]
	end

	helper_method :logged_in?
end