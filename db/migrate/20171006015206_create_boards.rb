class CreateBoards < ActiveRecord::Migration[5.1]
  def change
    create_table :boards do |t|
      t.integer :trip_id
      t.string :board_title

      t.timestamps
    end
  end
end
