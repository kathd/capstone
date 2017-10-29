class AddColumnsToTransportations < ActiveRecord::Migration[5.1]
  def change
    add_column :transportations, :traveling_from, :string
    add_column :transportations, :traveling_to, :string

  end
end
