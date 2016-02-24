class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :file_name
      t.string :url
      t.integer :like
      t.text :description      

      t.timestamps null: false
    end
  end
end
