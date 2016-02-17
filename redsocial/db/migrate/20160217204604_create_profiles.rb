class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|     
      t.string :fotoPerfil
      t.string :fotoPortada
      t.text :descripcion
      t.date :fechaNacimiento
      t.string :facebook
      t.string :twitter
      t.string :google
      t.string :youtube
      t.string :instagram
      t.string :celular
      t.string :telefono
      t.string :lugarNacimiento

      t.timestamps null: false
    end
  end
end
