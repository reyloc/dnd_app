class CreateChoices < ActiveRecord::Migration[5.2]
  def change
    create_table :choices do |t|
      t.references :equipment_choice, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
