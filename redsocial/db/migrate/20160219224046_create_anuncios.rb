class CreateAnuncios < ActiveRecord::Migration
  def change
    create_table :anuncios do |t|
      t.string :tipoAnuncio
      t.string :ubicacion
      t.string :fechaInicial_datetime
      t.datetime :fechaFinal
      t.integer :valor
      t.text :caracteristica

      t.timestamps null: false
    end
  end
end
