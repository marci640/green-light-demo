class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.integer :driver_id
      t.integer :ad_id
      t.string :make
      t.string :model
      t.string :year
      t.float :mileage
      t.string :car_image
      t.string :odometer_image

      t.timestamps
    end
  end
end
