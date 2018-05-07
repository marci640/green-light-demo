class CreateBusinesses < ActiveRecord::Migration[5.1]
  def change
    create_table :businesses do |t|
      t.integer :business_id
      t.string :business_name
      t.string :website_url

      t.timestamps
    end
  end
end
