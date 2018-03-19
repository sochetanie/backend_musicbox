class CreateVideos < ActiveRecord::Migration[5.1]
  def change
    create_table :videos do |t|
      t.string :youtube_id
      t.string :title
      t.string :thumbnail

      t.timestamps
    end
  end
end
