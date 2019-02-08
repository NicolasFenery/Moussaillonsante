class SessionsController < ApplicationController
	def new
		@user = User.new
	end

	def create
		user = User.find_by(email: params[:email])

		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect_to root_path
		else
			flash.now[:danger] = 'Le mot de passe ne correspond pas au mail'
			render 'new'
		end
	end

	def destroy
		session.delete(:user_id)
		redirect_to root_path, notice: 'Déconnecté'
	end
end
