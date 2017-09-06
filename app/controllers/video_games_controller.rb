class VideoGamesController < ApplicationController
  def show
    @platform = Platform.find(params[:platform_id])
    @video_game = VideoGame.where(id: params[:id])
  end
end
