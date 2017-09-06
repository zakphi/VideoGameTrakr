class VideoGamesController < ApplicationController
  def show
    @video_game = VideoGame.where(id: params[:id])
  end
end
