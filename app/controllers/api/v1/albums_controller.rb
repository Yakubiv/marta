class Api::V1::AlbumsController < ApplicationController
  def index
    albums = Album.all
    render json: albums
  end

  def create
    Rails.logger.debug params.inspect
    if Album.create(album_params)
      render json: :ok
    else
      render head: :error
    end
  end

  def show

  end

  private

  def album_params
    params.require(:album)
          .permit!
  end
end
