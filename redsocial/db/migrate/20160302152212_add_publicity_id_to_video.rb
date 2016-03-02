class AddPublicityIdToVideo < ActiveRecord::Migration
  def change
  	add_column :videos, :publicity_id, :integer
  	remove_column :videos, :profile_id, :integer
  end
end
