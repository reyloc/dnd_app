class CreateRealmDescriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :realm_descriptions do |t|
      t.references :realm, foreign_key: true
      t.string :description, null: false
      t.timestamps
    end
  end
end
