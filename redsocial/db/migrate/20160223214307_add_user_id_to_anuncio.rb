class AddUserIdToAnuncio < ActiveRecord::Migration
  def change
    add_column :anuncios, :user_id, :integer
  end
end
