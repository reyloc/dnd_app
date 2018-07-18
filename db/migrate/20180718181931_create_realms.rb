class CreateRealms < ActiveRecord::Migration[5.2]
  def change
    create_table :realms do |t|
      t.string :name, null: false
      t.boolean :is_public, default: false
      t.references :user, foreign_key: true
      t.timestamps
    end
    add_index :realms, :name, unique:true
  end
end
