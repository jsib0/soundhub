class FavalbumsController < ApplicationController
  def create
    favalbum=Favalbum.new(favalbum_params)
    if favalbum.save
      redirect_to "/users/#{current_user.id}"
    else
      flash[:errors]=favalbum.errors.full_messages
      redirect_to :back
    end
  end

  def destroy
    @favalbum=Favalbum.where(user_id:current_user.id,album_id:params[:favalbum][:album_id]).first
    @favalbum.destroy
    redirect_to "/users/#{current_user.id}"
  end

  private
  def favalbum_params
    params.require(:favalbum).permit(:album_id, :name, :artist, :popularity, :releasedate, :artist_id).merge(user:current_user)
  end

end
