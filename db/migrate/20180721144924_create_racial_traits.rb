class CreateRacialTraits < ActiveRecord::Migration[5.2]
  def change
    create_table :racial_traits do |t|
      t.references :race, foreign_key: true
      t.string :name
      t.references :table, foreign_key: true
      t.timestamps
    end
  end
end
