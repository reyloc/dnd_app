class CreateEquipmentDescriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :equipment_descriptions do |t|
      t.references :equipment, foreign_key: true
      t.string :description, null: false
      t.timestamps
    end
  end
end
