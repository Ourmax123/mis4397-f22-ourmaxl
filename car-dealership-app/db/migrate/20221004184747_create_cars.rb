class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :color
      t.string :model
      t.string :price
      t.text :description
      t.string :year
      t.string :make
      t.string :car_type
      t.string :status
      t.string :condition

      t.timestamps
    end
  end
end
