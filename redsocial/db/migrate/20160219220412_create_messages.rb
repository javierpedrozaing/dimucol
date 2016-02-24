class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :text
      t.datetime :fecha
      t.string :file_name
      t.string :foto

      t.timestamps null: false
    end
  end
end
