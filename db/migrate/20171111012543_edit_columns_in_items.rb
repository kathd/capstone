class EditColumnsInItems < ActiveRecord::Migration[5.1]
  def change
    remove_column :items, :time, :time
    add_column :items, :item_title, :string
  end
end
