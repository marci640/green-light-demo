class RenameContactName < ActiveRecord::Migration[5.1]
  def change
    rename_column :businesses, :contact_name, :first_name
  end
end
