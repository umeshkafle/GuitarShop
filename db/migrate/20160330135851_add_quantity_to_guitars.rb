class AddQuantityToGuitars < ActiveRecord::Migration
  def change
    add_column :guitars, :quantity, :integer
  end
end
