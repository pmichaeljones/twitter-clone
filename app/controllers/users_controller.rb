class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    #binding.pry
    @user = User.new(user_params)

    if @user.save
      flash[:notice] = "User Created"
      #go to user's info page
      redirect_to root_path
    else
      #render the register page again to fix errors
       render :new
    end

  end


  def show
    #binding.pry
    @user = User.find_by username: params[:username]
    #binding.pry
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :email)
  end


end
