class AddThumbnailUrlToCreations < ActiveRecord::Migration
  def self.up
    add_column :creations, :thumbnail_url, :string
  end

  def self.down
    remove_column :creations, :thumbnail_url
  end
end
