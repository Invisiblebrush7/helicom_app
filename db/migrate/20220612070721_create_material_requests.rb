class CreateMaterialRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :material_requests do |t|
      t.date :requested_date
      t.string :status
      t.references :who_authorized, null: false
      t.references :who_requested, null: false
      t.references :material, null: false, foreign_key: true

      t.timestamps
    end
    add_foreign_key :material_requests, :users, column: :who_authorized_id, primary_key: :id
    add_foreign_key :material_requests, :users, column: :who_requested_id, primary_key: :id
  end
end
