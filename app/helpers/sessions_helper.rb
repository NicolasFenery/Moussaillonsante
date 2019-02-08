module SessionsHelper
	def current_user
		User.find_by(id: cookies[:user_id])
	end

	def log_in(user)
		cookies[:user_id] = user.id
	end
end
