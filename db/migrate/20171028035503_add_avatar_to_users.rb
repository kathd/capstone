class AddAvatarToUsers < ActiveRecord::Migration[5.1]
  def change
    add_attachment :users, :avatar
    remove_column :users, :image_url
  end
end