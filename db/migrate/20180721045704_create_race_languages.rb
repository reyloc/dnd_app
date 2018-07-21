class CreateRaceLanguages < ActiveRecord::Migration[5.2]
  def change
    create_table :race_languages do |t|
      t.references :race, foreign_key: true
      t.references :language, foreign_key: true
      t.timestamps
    end
  end
end
