class AddIndexToPhotos < ActiveRecord::Migration
  def change  	  	
  	add_reference :photos, :image, polymorphic: true, index: true
  end
end
