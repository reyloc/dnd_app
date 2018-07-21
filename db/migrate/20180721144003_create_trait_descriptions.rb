class CreateTraitDescriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :trait_descriptions do |t|
      t.references :trait, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
