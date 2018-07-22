class CreateFeatures < ActiveRecord::Migration[5.2]
  def change
    create_table :features do |t|
      t.string :name, null: false
      t.references :table, foreign_key: true
      t.boolean :is_public, default: false
      t.references :user
      t.timestamps
    end
  end
end
