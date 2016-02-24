class CreateMessagesUsers < ActiveRecord::Migration
  def change
    create_table :messages_users do |t|
      t.integer :message_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
