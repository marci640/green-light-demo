class ChangeDriverPassword < ActiveRecord::Migration[5.1]
  def change
    rename_column :drivers, :password, :password_digest
  end
end
