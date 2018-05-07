class RemoveDriverIdFromDrivers < ActiveRecord::Migration[5.1]
  def change
    remove_column :drivers, :driver_id, :integer
  end
end
