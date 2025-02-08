class UsersController < ApplicationController
  before_action :set_user, only: [:show, :destroy] # rubocop:disable Layout/SpaceInsideArrayLiteralBrackets
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

  def destroy
    @user.destroy
    redirect_to root_path, notice: "User deleted successfully."
  end

  def show
    @user
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:firstName, :lastName, :phone, :age, :description, :gender, :address, :salary, :occupation, :birthdate)
  end
end
