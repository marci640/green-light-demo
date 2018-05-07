class CreateDrivers < ActiveRecord::Migration[5.1]
  def change
    create_table :drivers do |t|
      t.integer :driver_id
      t.string :email
      t.string :password
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :street_address_1
      t.string :street_address_2
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :license_plate_number

      t.timestamps
    end
  end
end
