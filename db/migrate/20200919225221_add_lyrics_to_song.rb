class AddLyricsToSong < ActiveRecord::Migration[5.2]
  def change
    add_column :songs, :lyrics, :text
  end
end
