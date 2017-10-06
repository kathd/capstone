class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.integer :board_id
      t.text :text
      t.float :longitude
      t.float :latitude
      t.string :image_url
      t.decimal :price, precision: 6, scale: 2

      t.timestamps
    end
  end
end
