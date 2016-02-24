class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :texto
      t.integer :like
      t.datetime :fecha      

      t.timestamps null: false
    end
  end
end
