class CreateEquipmentChoices < ActiveRecord::Migration[5.2]
  def change
    create_table :equipment_choices do |t|
      t.string :description

      t.timestamps
    end
  end
end
