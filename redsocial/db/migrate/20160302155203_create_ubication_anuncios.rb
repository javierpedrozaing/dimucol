class CreateUbicationAnuncios < ActiveRecord::Migration
  def change
    create_table :ubication_anuncios do |t|
      t.string :nombre
      t.integer :anuncio_id

      t.timestamps null: false
    end
  end
end
