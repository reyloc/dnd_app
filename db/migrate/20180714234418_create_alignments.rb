class CreateAlignments < ActiveRecord::Migration[5.2]
  def change
    create_table :alignments do |t|
      t.string :name, null: false, default: ''
      t.string :description, null: false
      t.boolean :is_public, default: false
      t.references :user, foreign_key: true
      t.timestamps
    end
    add_index :alignments, :name, unique: true
  end
end
