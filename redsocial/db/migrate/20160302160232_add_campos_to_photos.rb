class AddCamposToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :publicity_id, :integer
    add_column :photos, :album_id, :integer
  end
end
