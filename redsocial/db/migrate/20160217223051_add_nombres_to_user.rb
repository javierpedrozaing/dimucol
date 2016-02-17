class AddNombresToUser < ActiveRecord::Migration
  def change
  	add_column :users, :nombres, :string 
  	add_column :users, :apellidos, :string
  	add_column :users, :nombre_perfil, :string
  end
end
