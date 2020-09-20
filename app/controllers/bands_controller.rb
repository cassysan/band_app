class BandsController < ApplicationController
  before_action :find_band, only: [:edit, :show, :update, :destroy]
  def index
    @bands = Band.all
    @band = Band.new
  end

  def new
  end

  def edit
  end

  def show
    @album = Album.new
    @albums = Album.where(band_id: @band)
  end

  def create
    @band = Band.create(white_list_params)
    redirect_to bands_path
  end

  def update
    @band.update(white_list_params)
    redirect_to band_path(@band)
  end

  def destroy
    @band.destroy!
    redirect_to bands_path
  end
end

private

def find_band
  @band = Band.find(params[:id])
end

def white_list_params
  params.require(:band).permit(:name)
end
