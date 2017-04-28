class UsersController < ApplicationController

  layout "three_column"
  def create
    @user=User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to "/users/#{@user.id}"
    else
      flash[:errors]=@user.errors.full_messages
      redirect_to :back
    end
  end

  def show
    # @track = RSpotify::Track::
    @user=User.find(params[:id])
<<<<<<< HEAD
# <<<<<<< HEAD
    # @favartist=Favartist.where(user_id:@user.id)
    @post = Post.find_by_user_id(params[:id])
# =======
=======
>>>>>>> parent of 01eb61b... revert 329154526d218cb9702a58203cfe66b05dfb3732
    @favartist=Favartist.where(user_id:current_user.id)
    @favalbum=Favalbum.where(user_id:current_user.id)
    @favtrack=Favtrack.where(user_id:current_user.id)

    # @artist=RSpotify::Artist.search(Favartist.artist_id)

    # @favartist.each do |artist|
    #  @artists = RSpotify::Artist.search(artist.artist_id)
    # end

    # @favortist.each do |fava|
    #  @artists = RSpotify::Artist.search(fava.id)
    # end



<<<<<<< HEAD
# >>>>>>> parent of f39e011... added post model, post controller, installed paperclips
=======
>>>>>>> parent of 01eb61b... revert 329154526d218cb9702a58203cfe66b05dfb3732
  end

  private
  def user_params
    params.require(:user).permit(:first_name,:last_name,:username,:email,:age,:password,:password_confirmation)
  end
end
