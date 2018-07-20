class CreateTools < ActiveRecord::Migration[5.2]
  def change
    create_table :tools do |t|
      t.string :name, null: false
      t.string :description
      t.string :subtype, null: false, default: ''
      t.float :weight
      t.integer :cost
      t.string :currency
      t.references :image
      t.boolean :is_public, default: false
      t.references :user
      t.timestamps
    end
    add_index :tools, :name, unique: true
    add_index :tools, :subtype
  end
end
