class CreatePublicitesContratos < ActiveRecord::Migration
  def change
    create_table :publicites_contratos do |t|
      t.string :nombrePublicidad
      t.integer :valor

      t.timestamps null: false
    end
  end
end
