class CreateBackgroundDescriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :background_descriptions do |t|
      t.references :background, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
