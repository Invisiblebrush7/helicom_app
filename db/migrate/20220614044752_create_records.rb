class CreateRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :records do |t|
      t.string :pedido, null: false
      t.string :division, null: false
      t.string :subdireccion, null: false
      t.string :area, null: false
      t.string :cope, null: false
      t.string :distrito, null: false
      t.string :estado, null: false
      t.string :principal_fo, null: false
      t.integer :tendido_secundario, null: false
      t.integer :conectorizacion_terminales, null: false
      t.integer :detallado_distrito, null: false
      t.boolean :programa_thx, null: false
      t.boolean :programa_htm, null: false
      t.date :fecha_expedicion, null: false
      t.references :user, null: false, foreign_key: true
      t.date :fecha_compromiso, null: false
      t.integer :total, null: false
      t.decimal :porcentaje_material, null: false
      t.string :pep, null: false
      t.string :operaciones, null: false
      t.string :oei, null: false
      t.string :oe, null: false
      t.string :programa, null: false
      t.string :subprograma, null: false
      t.string :id_obra, null: false
      t.string :migrador
      t.text :comentarios
      t.string :ventas
      t.string :mes_programa_helicom
      t.string :protocolo
      t.string :planos
      t.string :permisos
      t.string :key
      t.integer :numero_terminales
      t.integer :km_secundario
      t.integer :puertos
      t.integer :clientes
      t.date :fecha_entrega_protocolo
      t.date :fecha_navegacion
      t.string :clave_cna

      t.timestamps
    end
  end
end
