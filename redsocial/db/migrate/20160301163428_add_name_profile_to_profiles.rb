class AddNameProfileToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :nombrePerfil, :string
    remove_column :users, :nombre_perfil, :string
  end
end
