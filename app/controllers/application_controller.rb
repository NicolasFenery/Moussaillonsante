class ApplicationController < ActionController::Base
	include SessionsHelper

	private

	def logged_in?
		current_user ||= User.find(cookies[:user_id]) if cookies[:user_id]
	end

	helper_method :logged_in?
end
