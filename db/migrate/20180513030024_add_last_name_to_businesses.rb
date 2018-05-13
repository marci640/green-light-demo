class AddLastNameToBusinesses < ActiveRecord::Migration[5.1]
  def change
    add_column :businesses, :last_name, :string
  end
end
