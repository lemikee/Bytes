class CreateBusinessCuisines < ActiveRecord::Migration[5.2]
  def change
    create_table :business_cuisines do |t|

      t.timestamps
    end
  end
end
