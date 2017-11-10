class DropLodgingTable < ActiveRecord::Migration[5.1]
  def change
    drop_table :lodgings
  end
end
