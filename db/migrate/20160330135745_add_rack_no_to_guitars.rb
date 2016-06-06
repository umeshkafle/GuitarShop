class AddRackNoToGuitars < ActiveRecord::Migration
  def change
    add_column :guitars, :rack_no, :integer
  end
end
