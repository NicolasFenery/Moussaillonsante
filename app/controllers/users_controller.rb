class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(name: params[:name], email: params[:email], password: params[:password])

    if @user.save
      redirect_to root_path
    else
      render 'new'
      end
  end

  def show
    @user = User.find(params[:id])
  end
end
