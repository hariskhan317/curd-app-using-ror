class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      redirect_to root_path()
    else
      render :new, status: :unprocessabl
    end
  end

  def user_params
    params.require(:user).permit(:firstName, :lastName, :phone, :age, :description, :address, :salary, :occupation, :birthdate)
  end
end
