class CreateRaceAbilities < ActiveRecord::Migration[5.2]
  def change
    create_table :race_abilities do |t|
      t.references :race, foreign_key: true
      t.references :ability, foreign_key: true
      t.integer :modifier
      t.timestamps
    end
  end
end
