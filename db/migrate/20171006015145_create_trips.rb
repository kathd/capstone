class CreateTrips < ActiveRecord::Migration[5.1]
  def change
    create_table :trips do |t|
      t.integer :user_id
      t.string :title
      t.float :longitude
      t.float :latitude
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
