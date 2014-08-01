class SessionsController < ApplicationController

  def new
  end

  def create
    #binding.pry
    @user = User.find_by username: params[:username]

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      flash[:notice] = "Welcome back #{@user.username}!"
      #binding.pry
      redirect_to user_path(@user.username)
    else
      flash[:notice] = "Your Login Info in Not Valid"
      render :new
    end

  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "You have logged out successfully"
    redirect_to login_path
  end

end

