class AddRelationsTopublicitiesContrato < ActiveRecord::Migration
  def change
  	add_column :publicites_contratos, :publicity_id, :integer
  	add_column :publicites_contratos, :user_id, :integer
  end
end
