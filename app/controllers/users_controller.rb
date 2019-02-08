class UsersController < ApplicationController

  def index
    @users = User.all
  end
  
  def new
    @user = User.new
  end

  def create
    @user = User.create(name: params[:name], email: params[:email], password: params[:password])

    if @user.save
      log_in(@user)
      redirect_to root_path
    else
      render 'new'
      end
  end

  def show
    @user = User.find(params[:id])
  end
end
