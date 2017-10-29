class DeleteColumnsFromLodgings < ActiveRecord::Migration[5.1]
  def change
    remove_column :lodgings, :longitude, :float
    remove_column :lodgings, :latitude, :float
  end
end
