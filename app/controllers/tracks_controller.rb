class TracksController < ApplicationController
  def index
    if !params[:track_name].empty?
      @track = RSpotify::Track.search(params[:track_name])
    else
      redirect_to root_path
    end
  end

  def show
    @track = RSpotify::Track.find(params[:id])
  end
end
