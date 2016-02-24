class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :nombre
      t.text :descripcion
      t.integer :valor

      t.timestamps null: false
    end
  end
end
