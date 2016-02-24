class CreateRespuestaComentarios < ActiveRecord::Migration
  def change
    create_table :respuesta_comentarios do |t|
      t.text :texto
      t.integer :like
      t.datetime :fecha

      t.timestamps null: false
    end
  end
end
