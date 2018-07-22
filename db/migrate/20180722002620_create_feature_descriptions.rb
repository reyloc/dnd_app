class CreateFeatureDescriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :feature_descriptions do |t|
      t.references :feature, foreign_key: true
      t.string :description, null: false
      t.timestamps
    end
  end
end
