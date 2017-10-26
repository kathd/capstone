class ChangeColumnsInTransportations < ActiveRecord::Migration[5.1]
  def change
    rename_column :transportations, :name, :transpo_name
  end
end
