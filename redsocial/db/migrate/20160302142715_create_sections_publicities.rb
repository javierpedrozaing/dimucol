class CreateSectionsPublicities < ActiveRecord::Migration
  def change
    create_table :sections_publicities do |t|
      t.integer :section_id
      t.integer :publicity_id

      t.timestamps null: false
    end
  end
end
