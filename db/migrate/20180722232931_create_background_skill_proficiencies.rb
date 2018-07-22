class CreateBackgroundSkillProficiencies < ActiveRecord::Migration[5.2]
  def change
    create_table :background_skill_proficiencies do |t|
      t.references :background, foreign_key: true
      t.references :skill, foreign_key: true

      t.timestamps
    end
  end
end
