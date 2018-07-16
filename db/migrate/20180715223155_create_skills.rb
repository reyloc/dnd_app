class CreateSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :skills do |t|
      t.string :name, null: false
      t.string :description, null: false
      t.references :ability, foreign_key: true
      t.boolean :is_public, default: false
      t.references :user, foreign_key: true
      t.timestamps
    end
    add_index :skills, :name, unique: true
  end
end
