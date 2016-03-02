class AddColumnsToPublicitiesContratos < ActiveRecord::Migration
  def change
    add_column :publicites_contratos, :fechaInicial, :datetime
    add_column :publicites_contratos, :fechaFinal, :datetime
  end
end
