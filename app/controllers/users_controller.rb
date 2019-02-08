class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(name: params [:name], email: params[:email], password:[:password])

    if @user.save
      redirect_to rooth_path
    else
      render 'new'
      end
  end

  def show
    @user = User.find(params[:id])
  end
end
