class AddRelationsToContratosPlan < ActiveRecord::Migration
  def change
    add_column :contratos_plans, :plan_id, :integer
    add_column :contratos_plans, :contrato_id, :integer
  end
end
