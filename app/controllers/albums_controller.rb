class AlbumsController < ApplicationController
  def index
    if !params[:album_name].empty?
      @albums = RSpotify::Album.search(params[:album_name])
    else
      redirect_to root_path
    end
  end

  def show
    @album = RSpotify::Album.find(params[:id])
  end
end
