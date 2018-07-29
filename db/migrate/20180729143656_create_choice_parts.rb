class CreateChoiceParts < ActiveRecord::Migration[5.2]
  def change
    create_table :choice_parts do |t|
      t.references :equipment_choice, foreign_key: true
      t.references :equipment, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
