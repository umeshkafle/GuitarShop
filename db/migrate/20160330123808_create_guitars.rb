class CreateGuitars < ActiveRecord::Migration
  def change
    create_table :guitars do |t|
      t.string :make
      t.string :model
      t.string :colour
      t.integer :selling_price
      t.string :condition

      t.timestamps null: false
    end
  end
end
