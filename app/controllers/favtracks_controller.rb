class FavtracksController < ApplicationController
  def create
    favtrack=Favtrack.new(favtrack_params)
    if favtrack.save
      redirect_to "/users/#{current_user.id}"
    else
      flash[:errors]=favtrack.errors.full_messages
      redirect_to :back
    end
  end



  private
  def favtrack_params
    params.require(:favtrack).permit(:name,:track_id,:album_id,:album,:popularity).merge(user:current_user)
  end
end
