class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.string :tipoNotificacion
      t.date :fecha
      t.text :texto

      t.timestamps null: false
    end
  end
end
