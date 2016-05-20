class RemoveCategCodeFromJewelries < ActiveRecord::Migration
  def change
    remove_column :jewelries, :categ_code, :integer
  end
end
