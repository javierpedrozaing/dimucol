class AddSectionIdToSeccionProfile < ActiveRecord::Migration
  def change
    add_column :seccion_profiles, :seccion_id, :integer
    add_column :seccion_profiles, :profile_id, :integer
  end
end
