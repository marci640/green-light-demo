class CreateAds < ActiveRecord::Migration[5.1]
  def change
    create_table :ads do |t|
      t.integer :business_id
      t.string :image
      t.integer :availability
      t.string :duration
      t.string :zip_code
      t.string :radius

      t.timestamps
    end
  end
end
