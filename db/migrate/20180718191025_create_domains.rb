class CreateDomains < ActiveRecord::Migration[5.2]
  def change
    create_table :domains do |t|
      t.string :name, null: false
      t.string :description
      t.boolean :is_public, default: false
      t.references :user
      t.timestamps
    end
    add_index :domains, :name, unique: true
  end
end
