class DeletePriceFromItems < ActiveRecord::Migration[5.1]
  def change
    remove_column :items, :price, :decimal
  end
end
