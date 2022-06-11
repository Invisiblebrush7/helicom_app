class ChangeStockFromDecimalToInteger < ActiveRecord::Migration[6.1]
  def change
    change_table :inventories do |t|
      t.remove :stock
      t.integer :stock
    end
  end
end
