class DeleteArriveColumnsFromTransportations < ActiveRecord::Migration[5.1]
  def change
    remove_column :transportations, :arrive_date, :date
    remove_column :transportations, :arrive_time, :time
  end
end
