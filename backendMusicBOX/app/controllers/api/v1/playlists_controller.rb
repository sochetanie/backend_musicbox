class Api::V1::PlaylistsController < ApplicationController
  # before_action :authorize_user!

  def index
    @playlists = Playlist.all.order(created_at: :DESC)

    render json: @playlists
  end

  def create
    @user_playlists = current_user.playlists
    @playlist = Playlist.new
    @playlist.title = playlist_params['title']
    @playlist.user = current_user
    playlist_params['videos'].each do |video|
      @playlist.videos << Video.find_or_create_by(video)
    end

    if @playlist.save
      render json: @playlist
    else
      render json: {"error": "invalid"}
    end
  end


  private
  def playlists_params
    params.permit(:title, :videos => [:youtube_id, :title, :thumbnail])
  end

end
