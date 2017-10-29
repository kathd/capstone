class DeleteLocationColumnsFromItems < ActiveRecord::Migration[5.1]
  def change
    remove_column :items, :longitude, :float
    remove_column :items, :latitude, :float
  end
end
