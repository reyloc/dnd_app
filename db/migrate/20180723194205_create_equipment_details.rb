class CreateEquipmentDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :equipment_details do |t|
      t.references :equipment, foreign_key: true
      t.string :name, null: false
      t.string :value, null: false
      t.timestamps
    end
  end
end
