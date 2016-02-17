class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.text :texto
      t.date :fecha
      t.string :tipoPublicacion
      t.integer :like
      t.string :imagen
      t.string :video
      t.string :ubicacion

      t.timestamps null: false
    end
  end
end
