class CreateMaterials < ActiveRecord::Migration[6.1]
  def change
    create_table :materials do |t|
      t.string :category
      t.string :description
      t.integer :catalog_number

      t.timestamps
    end
  end
end
