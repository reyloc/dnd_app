class CreateEquipmentTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :equipment_types do |t|
      t.string :name, null: false
      t.string :description
      t.timestamps
    end
    add_index :equipment_types, :name, unique: true
  end
end
