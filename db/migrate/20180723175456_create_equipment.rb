class CreateEquipment < ActiveRecord::Migration[5.2]
  def change
    create_table :equipment do |t|
      t.references :equipment_type, foreign_key: true
      t.string :name, null: false
      t.string :subtype
      t.integer :cost
      t.string :currency
      t.float :weight
      t.references :image, foreign_key: true
      t.boolean :is_public, default: false
      t.references :user, foreign_key: true
      t.timestamps
    end
    add_index :equipment, :name, unique: true
    add_index :equipment, :subtype
  end
end
