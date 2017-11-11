class DeleteTypeFromItems < ActiveRecord::Migration[5.1]
  def change
    remove_column :items, :item_type, :string
  end
end
