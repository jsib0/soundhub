class UsersController < ApplicationController

  layout "three_column"
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
    # @track = RSpotify::Track::
    @user=User.find(params[:id])


  end

  private
  def user_params
    params.require(:user).permit(:first_name,:last_name,:username,:email,:age,:password,:password_confirmation)
  end
end
