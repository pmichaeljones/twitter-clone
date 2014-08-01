class StatusesController < ApplicationController

  def new
    @status = Status.new
  end

  def create
    #binding.pry

    @status = Status.new(status_params)
    #binding.pry
    @status.creator = current_user #TODO add authentication

    if @status.save
      flash[:notice] = "Status Created!"
      redirect_to user_path(current_user.username)
    else
      flash[:notice] = "Hmmm, something went wrong."
      render :new
    end

  end

  def destroy

  end


  private

  def status_params
    params.require(:status).permit(:body)
  end

end
