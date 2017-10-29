class DeleteColumnsFromTrips < ActiveRecord::Migration[5.1]
  def change
    remove_column :trips, :longitude, :float
    remove_column :trips, :latitude, :float

  end
end
