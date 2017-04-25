class UsersController < ApplicationController

  def create
    @user=User.new(user_params)
    if @user.save
      redirect_to "/users/#{@user.id}"
    else
      flash[:errors]=@user.errors.full_messages
      redirect_to :back
    end
  end

  def show
    # fail
    @user=User.find(params[:id])
    # @user=User.find(session[:user_id])
  end

  private
  def user_params
    params.require(:user).permit(:first_name,:last_name,:username,:email,:password,:password_confirmation)
  end
end
