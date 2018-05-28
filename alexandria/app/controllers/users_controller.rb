class UsersController < ApplicationController

  before_action :require_signin, except: [:new, :create]
  before_action :require_correct_user, only: [:edit, :update, :destroy]



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
      session[:user_id] = @user.id
      redirect_to root_url, notice: "User successfully added!"
    else
      render :new
    end

  end


  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      session[:user_id] = nil
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


  def require_correct_user
    @user = User.find(params[:id])
    unless current_user?(@user)
      redirect_to root_url
    end
  end


  def password_changed?
    !@new_password.blank? or encrypted_password.blank?
  end

  def user_params
    params.require(:user).
        permit(:username, :firstname, :lastname, :email, :password, :password_confirmation)
  end


end
