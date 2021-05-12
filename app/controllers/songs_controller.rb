class SongsController < ApplicationController

  def index
    render json: Song.all
  end

  def create
    song = Song.new(
      title: params[:title],
      album: params[:album],
      artist: params[:artist],
      year: params[:year]
    )
    song.save
    render json: song
  end

  def show
    one_song = Song.find(params[:id])
    render json: one_song
  end

  def update
    song = Song.find(params[:id])
    song.update(
      title: params[:title] || song.title,
      album: params[:album] || song.album,
      artist: params[:artist] || song.artist,
      year: params[:year] || song.year,
    )
    song.save
    render json: song
  end

  def destroy
    song = Song.find(params[:id])
    song.delete
    render json: {message: "Song has been removed from archive"}
  end
end
