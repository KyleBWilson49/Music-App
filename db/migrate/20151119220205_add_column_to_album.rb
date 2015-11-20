class AddColumnToAlbum < ActiveRecord::Migration
  def change
    add_column :albums, :recording_type, :text
  end
end
