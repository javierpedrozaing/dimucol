class AddProfileIdToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :profile_id, :integer
  end
end
