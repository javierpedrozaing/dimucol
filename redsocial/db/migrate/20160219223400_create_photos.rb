class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :fiel_name
      t.string :content_type
      t.integer :file_size      

      t.timestamps null: false
    end
  end
end
