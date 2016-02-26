class CreatePublicities < ActiveRecord::Migration
  def change
    create_table :publicities do |t|
      t.string :logo
      t.string :nombreComercial
      t.string :email
      t.string :direccion
      t.integer :telefono
      t.integer :celular
      t.string :web
      t.string :experiencia
      t.string :repertorio

      t.timestamps null: false
    end
  end
end
