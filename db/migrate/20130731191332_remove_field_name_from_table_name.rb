class RemoveFieldNameFromTableName < ActiveRecord::Migration
  def up
    remove_column :songs, :mp3_updated_at
    remove_column :songs, :mp3_file_size
    remove_column :songs, :mp3_content_type
    remove_column :songs, :mp3_file_name
  end

  def down
  end
end
