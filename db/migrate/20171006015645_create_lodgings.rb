class CreateLodgings < ActiveRecord::Migration[5.1]
  def change
    create_table :lodgings do |t|
      t.integer :trip_id
      t.string :lodging_name
      t.float :longitude
      t.float :latitude
      t.date :checkin_date
      t.date :checkout_date
      t.text :notes
      t.decimal :price, precision: 6, scale: 2

      t.timestamps
    end
  end
end
