class SessionsController < ApplicationController
	def new
		@user = User.new
	end

	def create
		user = User.find_by(email: params[:email])

		if user && user.authenticate(params[:password])
			cookies[:user_id] = user.user_id
			redirect_to root_path
		else
			flash.now[:danger] = 'Le mot de pass ne correspond pas au mail'
			render 'new'
	end

	def destroy
		session.delete(:user_id)
		redirect_to root_path, notice: 'Déconnecté'
	end
end
