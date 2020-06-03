class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.valid?
      @user.save
      redirect_to new_user_path
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
    @user_temp = User.new
  end

  def update
    @user = User.find(params[:id])
    @user_temp = User.new(user_params)

    if @user_temp.valid?
      @user.update(user_params)
      redirect_to new_user_path
    else
      render :edit
    end
  end

  def user_params
    params.require(:user).permit(:username, :password, :email)
  end
end
