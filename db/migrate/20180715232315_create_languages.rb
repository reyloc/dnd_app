class CreateLanguages < ActiveRecord::Migration[5.2]
  def change
    create_table :languages do |t|
      t.string :name, null: false
      t.string :description, null: false
      t.string :selector, null: false
      t.string :source_file, null: false
      t.string :file_format, null: false
      t.integer :font_size, null: false
      t.boolean :is_public, default: false
      t.references :user, foreign_key: true
      t.timestamps
    end
    add_index :languages, :name, unique: true
  end
end
