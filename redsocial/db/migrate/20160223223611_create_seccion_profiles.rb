class CreateSeccionProfiles < ActiveRecord::Migration
  def change
    create_table :seccion_profiles do |t|

      t.timestamps null: false
    end
  end
end
