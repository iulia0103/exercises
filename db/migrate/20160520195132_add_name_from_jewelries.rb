class AddNameFromJewelries < ActiveRecord::Migration
  def change
    add_column :jewelries, :name, :string
  end
end
