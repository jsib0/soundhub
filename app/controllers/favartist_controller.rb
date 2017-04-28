class FavartistController < ApplicationController
  def create
    favartist = Favartist.new(favartist_params)
    if favartist.save
      redirect_to "/users/#{current_user.id}"
    else
      flash[:errors]=favartist.errors.full_messages
      redirect_to :back
    end
  end

  def destroy
    @favartist=Favartist.where(user_id:current_user.id,artist_id:params[:favartist][:artist_id]).first
    @favartist.destroy
    # @favartist=Favartist.find(pamras[:id]).destroy
    redirect_to "/users/#{current_user.id}"
  end


  private
  def favartist_params
    params.require(:favartist).permit(:artist_id, :name).merge(user: current_user)
  end

end
