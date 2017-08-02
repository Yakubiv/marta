class AlbumsController < ApplicationController
  def index
    @albums = Album.all
    render json: @albums
  end

  def show
    @album = Album.find(params[:id])
    render json: @album
  end

  def create
    if @album = Album.create(album_params)
      save_image
      render json: @album
    else
      render head: :error
    end
  end

  private

  def save_image
    uploader = CoverUploader.new(@album, :album)
    uploader.store!(params['album']['cover'])
    @album.cover = uploader.file
    @album.save!
  end

  def album_params
    params.require(:album)
          .permit!
  end
end
