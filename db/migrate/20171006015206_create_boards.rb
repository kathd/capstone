class CreateBoards < ActiveRecord::Migration[5.1]
  def change
    create_table :boards do |t|
      t.integer :trip_id
      t.string :title

      t.timestamps
    end
  end
end
