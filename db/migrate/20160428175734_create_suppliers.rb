class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.string :guitar_name
      t.string :supplier_name
      t.text :supplier_address
      t.date :purchased_date
      t.date :delivery_date
      t.integer :quantity
      t.integer :price

      t.timestamps null: false
    end
  end
end
