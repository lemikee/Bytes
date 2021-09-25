class CreateBusinesses < ActiveRecord::Migration[5.2]
  def change
    create_table :businesses do |t|
      t.string :business_name, null: false
      t.integer :cuisine_id, null: false
      t.string :address, null: false
      t.integer :city_id, null: false
      t.integer :zip_code, null: false
      t.string :state, null: false
      t.string :hours, null: false
      t.string :description, null: false
      t.float :long, null: false
      t.float :lat, null: false

      t.timestamps
    end

    add_index :businesses, :business_name
    add_index :businesses, :address, unique: true
  end
end
