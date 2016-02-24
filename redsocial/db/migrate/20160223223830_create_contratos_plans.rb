class CreateContratosPlans < ActiveRecord::Migration
  def change
    create_table :contratos_plans do |t|
      t.integer :valorTotal

      t.timestamps null: false
    end
  end
end
