class UpdateAdColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :ads, :montly_rate, :monthly_rate
  end
end
