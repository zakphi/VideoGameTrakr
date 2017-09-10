class VideoGamesController < ApplicationController
  def show
    @platform = Platform.find(params[:platform_id])
    @video_game = VideoGame.find(params[:id])
  end

  def destroy
    @platform = Platform.find(params[:platform_id])
    VideoGame.destroy(params['id'])
    redirect_to platform_path(@platform)
  end

  def create
    @platform = Platform.find(params[:platform_id])
    game = params['video_game']
    VideoGame.create!(title: game['title'],
                      platform: @platform,
                      release_date: game['release_date'],
                      description: game['description'])

    redirect_to platform_path(@platform)
  end

  def update
    @platform = Platform.find(params[:platform_id])
    @game = VideoGame.find(params[:id])
    game = params['video_game']
    VideoGame.update(params[:id],
                    title: game['title'],
                    platform: @platform,
                    release_date: game['release_date'],
                    description: game['description'])

    redirect_to platform_video_game_path(@platform, @game)
  end

  def edit
    @game = VideoGame.find(params[:id])
  end
end
