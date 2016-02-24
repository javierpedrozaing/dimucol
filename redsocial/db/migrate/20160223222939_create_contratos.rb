class CreateContratos < ActiveRecord::Migration
  def change
    create_table :contratos do |t|
      t.string :fechaInicial_datetime
      t.datetime :fechaFinal
      t.integer :valorTotal
      t.integer :descuento
      t.string :estado

      t.timestamps null: false
    end
  end
end
