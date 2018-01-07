class SongsController < ApplicationController
  before_action :set_song, only: [:show, :destroy]


#GET /songs
#GET /songs.json

  def index
    @songs = Song.all
  end

  def show
      @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)

    respond_to do |format|
      if @song.save
        format.html{ redirect_to @song.artist, notice: "Song created"}
        format.json { render :show, status: :created, location: @song}
      else
        format.html {redirect_to @song.artist}
        format.json {render json: @song.errors, status: unprocessable_entity}
      end
    end
  end


  def destroy
      @song.destroy
      respond_to do |format|
        format.html { redirect_to @song.artist, notice: "Song deleted." }
        format.json { head :no_content }
      end
    end

  private

  def set_song
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:title, :artist_id)
  end

end
