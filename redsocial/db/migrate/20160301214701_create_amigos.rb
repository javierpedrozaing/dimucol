class CreateAmigos < ActiveRecord::Migration
  def change
    create_table :amigos do |t|
      t.integer :user_id
      t.string :estado

      t.timestamps null: false
    end
  end
end
