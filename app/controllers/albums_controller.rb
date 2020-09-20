class AlbumsController < ApplicationController
  before_action :find_album, only: [:show, :update, :destroy]
  def index
  end

  def new
  end

  def show
    @song = Song.new
  end

  def create
    @band = Band.find(params[:band_id])
    @album = Album.create(white_list_params)
    @album.band = @band
    @album.save
    if @album
      redirect_to band_path(@band)
    else
      render band_path
    end
  end

  def update
    @album.update(white_list_params)
    redirect_to band_path(@band)
  end

  def destroy
    @album.destroy!
    if @album.destroy
      redirect_to band_path(@band)
    else
      render bands_path
    end
  end
end

private

def white_list_params
  params.require(:album).permit(:name, :band_id)
end

def find_album
  @band = Band.find(params[:band_id])
  @album = Album.find(params[:id]) || Album.find(params[:album_id])
end
