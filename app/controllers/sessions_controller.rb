class SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to "/players"
    else
      flash[:errors] = ["Invalid combination"]
      redirect_to "/users"
    end
  end
  def destroy
    reset_session
    redirect_to :root
  end
end