class CreateBackgroundCharacteristicDescriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :background_characteristic_descriptions do |t|
      t.references :background_characteristic, foreign_key: true, index: {name: 'index_bc'}
      t.string :description, null: false
      t.timestamps
    end
  end
end
