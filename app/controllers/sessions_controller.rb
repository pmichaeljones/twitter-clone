class SessionsController < ApplicationController

  def new
  end

  def create
    #binding.pry
    @user = User.find_by username: params[:username]

    if @user && @user.authenticate(params[:password])
      flash[:notice] = "Welcome back #{@user.username}!"
      redirect_to user_path(@user.username)
    else
      flash[:notice] = "Your Login Info in Not Valid"
      render :new
    end

  end

  def destroy
  end

end

