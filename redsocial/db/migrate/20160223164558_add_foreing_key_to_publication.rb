class AddForeingKeyToPublication < ActiveRecord::Migration
  def change
  	add_index :publications, :user_id
  end
end
