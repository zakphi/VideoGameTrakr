class CreateVideoGames < ActiveRecord::Migration[5.1]
  def change
    create_table :video_games do |t|
      t.string :title
      t.string :platform
      t.date :release_date
      t.text :description

      t.timestamps
    end
  end
end
