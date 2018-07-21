class CreateSizeModifiers < ActiveRecord::Migration[5.2]
  def change
    create_table :size_modifiers do |t|
      t.references :size, foreign_key: true
      t.integer :attack
      t.integer :special
      t.integer :hide
      t.integer :tall_reach
      t.integer :long_reach
      t.decimal :biped_carrying
      t.decimal :quadruped_carrying
      t.timestamps
    end
  end
end
