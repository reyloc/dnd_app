class CreateBackgroundEquipments < ActiveRecord::Migration[5.2]
  def change
    create_table :background_equipments do |t|
      t.references :background, foreign_key: true
      t.references :equipment_choice, foreign_key: true

      t.timestamps
    end
  end
end
