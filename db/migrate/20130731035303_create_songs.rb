class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :artist
      t.string :title
      t.text :description
      t.string :genre

      t.timestamps
    end
  end
end
