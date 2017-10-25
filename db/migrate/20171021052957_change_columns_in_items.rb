class ChangeColumnsInItems < ActiveRecord::Migration[5.1]
  def change
    remove_column :items, :notes, :text
    remove_column :items, :image_url, :string
    add_column :items, :description, :text
  end
end
