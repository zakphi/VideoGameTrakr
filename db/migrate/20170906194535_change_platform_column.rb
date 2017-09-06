class ChangePlatformColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :video_games, :platform, :platform_id
  end
end
