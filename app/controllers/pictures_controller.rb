class PicturesController < ApplicationController
  def create

    @picture = Picture.new(picture_params)
    if @picture.save
      redirect_to "/users/#{session[:user_id]}"
    else
      flash[:errors] = @picture.errors.full_messages
      redirect_to :back
    end
  end

  def destroy
  end
  private
  def picture_params
    params.require(:picture).permit(:image, :user_id)
  end
end
