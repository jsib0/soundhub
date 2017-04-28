class ArtistsController < ApplicationController

  def index
  end

  def show
    @artist = RSpotify::Artist.find(params[:id])
    # @artist = RSpotify::Artist.find(params[:artist_id])
  end
end
