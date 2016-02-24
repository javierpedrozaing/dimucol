class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :nombre

      t.timestamps null: false
    end
  end
end
