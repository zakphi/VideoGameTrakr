class VideoGamesController < ApplicationController
  def show
    @platform = Platform.find(params[:platform_id])
    @video_game = VideoGame.where(id: params[:id])
  end

  def destroy
    @platform = Platform.find(params[:platform_id])
    VideoGame.destroy(params['id'])
    redirect_to platform_path(@platform)
  end
end
