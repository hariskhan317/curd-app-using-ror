class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :destroy, :edit_user] # rubocop:disable Layout/SpaceInsideArrayLiteralBrackets
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
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @user
  end

  def destroy
    @user.destroy
    redirect_to root_path, notice: "User deleted successfully."
  end

  def edit_user
    if @user.update(user_params)
      redirect_to root_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def show
    @user
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:firstName, :lastName, :phone, :age, :description, :gender, :address, :salary, :occupation, :birthdate, :country_id, :department_id)
  end
end
