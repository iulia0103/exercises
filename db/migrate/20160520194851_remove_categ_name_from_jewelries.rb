class RemoveCategNameFromJewelries < ActiveRecord::Migration
  def change
    remove_column :jewelries, :categ_name, :string
  end
end
