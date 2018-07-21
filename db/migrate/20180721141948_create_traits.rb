class CreateTraits < ActiveRecord::Migration[5.2]
  def change
    create_table :traits do |t|
      t.string :name, null: false
      t.references :race, foreign_key: true
      t.references :table, foreign_key: true
      t.boolean :is_public, default: false
      t.references :user, foreign_key: true
      t.timestamps
    end
    add_index :traits, :name, unique: true
  end
end
