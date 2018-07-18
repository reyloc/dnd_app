class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :file, null: false, unique: true
      t.string :author, null: false
      t.string :title, null: false
      t.timestamps
    end
    add_index :images, :file, unique: true
    add_index :images, :author
  end
end
