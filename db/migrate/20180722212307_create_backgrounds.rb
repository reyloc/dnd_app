class CreateBackgrounds < ActiveRecord::Migration[5.2]
  def change
    create_table :backgrounds do |t|
      t.string :name, null: false
      t.string :suggested_characteristics, null: false
      t.integer :language_variants, default: 0
      t.references :feature, foreign_key: true
      t.references :image, foreign_key: true
      t.boolean :is_public, default: false
      t.references :user, foreign_key: true
      t.timestamps
    end
    add_index :backgrounds, :name, unique: true
  end
end
