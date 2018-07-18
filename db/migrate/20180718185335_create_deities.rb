class CreateDeities < ActiveRecord::Migration[5.2]
  def change
    create_table :deities do |t|
      t.string :name, null: false
      t.references :alignment, foreign_key: true
      t.references :realm, foreign_key: true
      t.string :symbol
      t.string :of
      t.references :image, foreign_key: true
      t.boolean :is_public, default: false
      t.references :user, foreign_key: true
      t.timestamps
    end
    add_index :deities, :name, unique: true
  end
end
