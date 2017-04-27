class FavalbumsController < ApplicationController
  def create
    favalbum=Favalbum.new(favalbum_params)
    if favalbum.save
      redirect_to "/users/#{current_user.id}"
    else
      flash[:errors]=favartist.errors.full_messages
      redirect_to :back
    end
  end


  private
  def favalbum_params
    params.require(:favalbum).permit(:album_id, :name, :artist, :popularity, :releasedate, :artist_id).merge(user:current_user)
  end

end
