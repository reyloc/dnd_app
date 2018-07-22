class CreateIdeals < ActiveRecord::Migration[5.2]
  def change
    create_table :ideals do |t|
      t.references :background, foreign_key: true
      t.string :name, null: false
      t.string :description, null: false
      t.timestamps
    end
  end
end
