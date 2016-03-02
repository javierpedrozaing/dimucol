class AddpublcityIdToPlan < ActiveRecord::Migration
  def change
  	add_column :plans, :publicity_id, :integer
  end
end
