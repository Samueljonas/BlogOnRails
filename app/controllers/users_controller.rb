class UsersController < ApplicationController
  before_action :authenticate_user! #verify if user are authentic
  before_action :set__user, only: [:show, :edit, :update, :destroy]
  before_action :authorize_admin, except: [:index, :show]

  def index
    @users = User.all
  end

  def show
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to @user, notice: "User updated!"
    else
      render :edit
    end
  end


  def destroy
    user.destroy
  redirect_to users_path, notice: 'User exclude!'
  end
  private

  def set__user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email,:password, :password_confirmation, :name)
  end

  def authorize_admin
    redirect_to root_path, alert: "Unauthorized access!" unless current_user.admin?
  end
end
