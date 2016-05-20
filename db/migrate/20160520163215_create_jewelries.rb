class CreateJewelries < ActiveRecord::Migration
  def change
    create_table :jewelries do |t|
      t.string :categ_name
      t.integer :categ_code

      t.timestamps null: false
    end
  end
end
