class PlatformsController < ApplicationController
  def index
    @platforms = Platform.all
  end

  def show
    @video_games = VideoGame.where(platform_id: params[:id])
  end
end
