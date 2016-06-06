class Changecolumnname < ActiveRecord::Migration
  def change
  	rename_column :guitars, :model, :guitar_model
  end
end
