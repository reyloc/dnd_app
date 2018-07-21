class CreateRacialTraitDescriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :racial_trait_descriptions do |t|
      t.references :racial_trait, foreign_key: true
      t.string :description
      t.timestamps
    end
  end
end
