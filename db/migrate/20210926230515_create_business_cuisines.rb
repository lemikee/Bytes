class CreateBusinessCuisines < ActiveRecord::Migration[5.2]
  def change
    create_table :business_cuisines do |t|
      t.integer :business_id, null: false
      t.integer :cuisine_id, null: false

      t.timestamps
    end

    add_index :business_cuisines, :business_id
    add_index :business_cuisines, :cuisine_id
  end
end
