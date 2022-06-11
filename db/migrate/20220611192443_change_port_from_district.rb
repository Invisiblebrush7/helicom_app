class ChangePortFromDistrict < ActiveRecord::Migration[6.1]
  def change
    change_table :districts do |t|
      t.remove :port
      t.integer :port
    end
  end
end
