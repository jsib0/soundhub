class UsersController < ApplicationController

  def create
    user=User.new(user_params)
    if user.save
      redirect_to "users/#{user.id}"
    else
      flash[:errors]=user.errors.full_messages
      redirect_to :back
  end



  private
  def user_params
    paramas.require(:user).permit(:first_name,:last_name,:username,:email,:password,:password_confirmation)
  end
end
