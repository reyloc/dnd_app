class CreateBackgroundCharacteristics < ActiveRecord::Migration[5.2]
  def change
    create_table :background_characteristics do |t|
      t.references :background, foreign_key: true
      t.string :name, null: false
      t.references :table, foreign_key: true
      t.timestamps
    end
  end
end
