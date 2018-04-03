class UsersController < ApplicationController
  def index
    @users = User.all
  end


  def show
    @user = User.find(params[:id])
  end


  def new
    @user = User.new
  end


  def edit
    @user = User.find(params[:id])
  end


  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_url, notice: "User successfully added!"
    else
      render :new
    end

  end


  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      redirect_to users_url, alert: "User deleted!"
    else
      render :destroy
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to @user, notice: "User successfully updated!"
    else
      render :edit
    end
  end



  private


  def password_changed?
    !@new_password.blank? or encrypted_password.blank?
  end

  def user_params
    params.require(:user).
        permit(:username, :firstname, :lastname, :email, :password, :password_confirmation)
  end


end
