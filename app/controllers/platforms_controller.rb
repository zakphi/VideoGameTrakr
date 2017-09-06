class PlatformsController < ApplicationController
  def index
    @platforms = Platform.all
  end

  def show
    @platform = Platform.find(params[:id])

    @video_games = VideoGame.where(platform_id: params[:id])
  end
end
