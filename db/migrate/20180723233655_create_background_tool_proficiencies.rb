class CreateBackgroundToolProficiencies < ActiveRecord::Migration[5.2]
  def change
    create_table :background_tool_proficiencies do |t|
      t.references :background, foreign_key: true
      t.references :equipment, foreign_key: true
      t.timestamps
    end
  end
end
