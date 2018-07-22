class CreateBackgroundLanguages < ActiveRecord::Migration[5.2]
  def change
    create_table :background_languages do |t|
      t.references :background, foreign_key: true
      t.references :language, foreign_key: true

      t.timestamps
    end
  end
end
