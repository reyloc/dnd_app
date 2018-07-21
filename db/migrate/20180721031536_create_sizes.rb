class CreateSizes < ActiveRecord::Migration[5.2]
  def change
    create_table :sizes do |t|
      t.string :name, null: false
      t.integer :min_height
      t.integer :max_height
      t.integer :space
      t.boolean :is_public, default: false
      t.references :user, foreign_key: true
      t.timestamps
    end
    add_index :sizes, :name, unique: true
  end
end
