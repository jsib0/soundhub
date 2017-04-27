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

  def destroy
    @favtrack=Favtrack.where(user_id:current_user.id,track_id:params[:favtrack][:track_id]).first
    @favtrack.destroy
    redirect_to "/users/#{current_user.id}"
  end


  private
  def favtrack_params
    params.require(:favtrack).permit(:name,:track_id,:album_id,:album,:popularity).merge(user:current_user)
  end
end
