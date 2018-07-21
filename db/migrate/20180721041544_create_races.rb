class CreateRaces < ActiveRecord::Migration[5.2]
  def change
    create_table :races do |t|
      t.string :name, null: false
      t.string :description, null: false
      t.integer :ability_score_points, default: 0
      t.string :age
      t.string :alignment
      t.references :size, foreign_key: true
      t.string :size_info
      t.integer :speed
      t.string :speed_info
      t.integer :language_variants, default: 0
      t.integer :base_height
      t.string :height_mod
      t.integer :base_weight
      t.string :weight_mod
      t.boolean :is_public, default: false
      t.references :image, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
    add_index :races, :name, unique: true
  end
end
