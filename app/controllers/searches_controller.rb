class SearchesController < ApplicationController
  def index
    if !params[:search].empty?
      @artists = RSpotify::Artist.search(params[:search])
      @album = RSpotify::Album.search(params[:search])
      @track = RSpotify::Track.search(params[:search])
    else
      redirect_to root_path
    end
  end

  def show
  end
end
