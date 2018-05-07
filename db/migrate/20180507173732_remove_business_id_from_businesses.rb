class RemoveBusinessIdFromBusinesses < ActiveRecord::Migration[5.1]
  def change
    remove_column :businesses, :business_id, :integer
  end
end
