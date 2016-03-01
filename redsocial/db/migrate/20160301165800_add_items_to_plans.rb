class AddItemsToPlans < ActiveRecord::Migration
  def change
  	add_column :plans, :profile_id, :integer
  	add_column :plans, :fechaInicial, :string
  	add_column :plans, :fechaFinal, :string
  	add_column :plans, :sort_coeficient, :string

  end
end
