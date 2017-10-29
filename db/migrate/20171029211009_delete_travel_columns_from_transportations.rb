class DeleteTravelColumnsFromTransportations < ActiveRecord::Migration[5.1]
  def change
    remove_column :transportations, :traveling_from, :string
    remove_column :transportations, :traveling_to, :string
  end
end
