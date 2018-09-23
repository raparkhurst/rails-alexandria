class SessionsController < ApplicationController

  def new
    
  end



  def create
    if user = User.authenticate(params[:email], params[:password])
      session[:user_id] = user.id
      #flash[:notice] = "Welcome back #{user.firstname}"
      redirect_to(session[:intended_url] || books_url)
      session[:intended_url] = nil
    else
      flash.now[:alert] = "Invalid email/password combination!"
      render :new
    end
  end



  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Signed Out!"
  end


end
