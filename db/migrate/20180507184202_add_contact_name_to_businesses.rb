class AddContactNameToBusinesses < ActiveRecord::Migration[5.1]
  def change
    add_column :businesses, :contact_name, :string
  end
end
