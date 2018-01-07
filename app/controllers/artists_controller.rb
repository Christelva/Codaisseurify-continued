class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :edit, :update, :destroy]

def index
  @artists = Artist.all
end

def show
  @song = Song.new
  @photos = @artist.photos
end

def destroy
  @artist.destroy
  redirect_to root_path, notice: "Artist removed!"
end

private

def set_artist
  @artist = Artist.find(params[:id])
end

def artist_params
  params.require(:artist).permit(:first_name, :last_name, :bio)
end

def image_params
  params[:images].present? ? params.require(:images) : []
end
end
