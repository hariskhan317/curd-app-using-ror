class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user.param)
    if @user.save
      redirect_to root_path()
    else
      render :new, status: :unprocessabl
    end
  end
end
