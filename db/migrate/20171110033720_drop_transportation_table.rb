class DropTransportationTable < ActiveRecord::Migration[5.1]
  def change
    drop_table :transportations
  end
end
