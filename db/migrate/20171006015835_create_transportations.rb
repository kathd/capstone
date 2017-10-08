class CreateTransportations < ActiveRecord::Migration[5.1]
  def change
    create_table :transportations do |t|
      t.integer :trip_id
      t.string :transpo_type
      t.string :name
      t.date :depart_date
      t.date :arrive_date
      t.time :depart_time
      t.time :arrive_time
      t.text :notes
      t.decimal :price, precision: 6, scale: 2

      t.timestamps
    end
  end
end
