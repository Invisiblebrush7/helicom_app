class CreateInventories < ActiveRecord::Migration[6.1]
  def change
    create_table :inventories do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :material, foreign_key: true
      t.decimal :stock
      t.timestamps
    end
  end
end
