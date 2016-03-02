class RemoveprofileIdToPlan < ActiveRecord::Migration
  def change
  	remove_column :plans, :profile_id, :intenger
  	add_column :plans, :user_id, :integer
  end
end
