class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :type
      t.string :performance
      t.string :color
      t.string :lines
      t.string :price
      t.string :brand
      t.string :modelo

      t.timestamps null: false
    end
  end
end
