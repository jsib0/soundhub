class SessionController < ApplicationController

  def create
    @user=User.find_by_email(params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id]=@user.id
      redirect_to "/users/#{@user.id}"
      # redirect_to "users/#{session[:user_id]}"
    else
      flash[:errors]=["You input doesn't match our record!"]
      redirect_to :back
    end
  end

  def destroy
    reset_session
    redirect_to :root
  end

end
