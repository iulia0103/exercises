class AddCodeFromJewelries < ActiveRecord::Migration
  def change
    add_column :jewelries, :code, :integer
  end
end
