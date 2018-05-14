class AddColumnsToAds < ActiveRecord::Migration[5.1]
  def change
    add_column :ads, :city, :string
    add_column :ads, :state, :string
    add_column :ads, :montly_rate, :string
  end
end
