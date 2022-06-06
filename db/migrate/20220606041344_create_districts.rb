class CreateDistricts < ActiveRecord::Migration[6.1]
  def change
    create_table :districts do |t|
      t.string :name
      t.string :port
      t.string :area
      t.string :id_str

      t.timestamps
    end
  end
end
