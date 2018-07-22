class CreateFlaws < ActiveRecord::Migration[5.2]
  def change
    create_table :flaws do |t|
      t.references :background, foreign_key: true
      t.string :description, null: false
      t.timestamps
    end
  end
end
