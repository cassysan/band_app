class SongsController < ApplicationController
  def show
  end

  def create
    @song = Song.create(white_list_params)
    puts white_list_params
    @album = Album.find(@song.album.id)
    redirect_to band_album_path(@album.band, @album.id)
  end
  def destroy
    @song = Song.find(params[:id])
    @song.destroy!
    redirect_to band_album_path(@song.album.band, @song.album.id)
  end
end


private

def white_list_params
  params.require(:song).permit(:album, :name, :album_id, :lyrics, :rating)
end
