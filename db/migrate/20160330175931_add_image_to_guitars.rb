class AddImageToGuitars < ActiveRecord::Migration
  def change
    add_column :guitars, :image, :string
  end
end
