class ChangeColumnsInUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :remember_created_at, :datetime
    add_column :users, :email, :string
    add_column :users, :password_digest, :string
  end
end
