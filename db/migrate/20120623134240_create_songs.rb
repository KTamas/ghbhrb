class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :artist
      t.string :title
      t.string :tier
      t.integer :game_id

      t.timestamps
    end
  end
end
