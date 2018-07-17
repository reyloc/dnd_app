class CreateTables < ActiveRecord::Migration[5.2]
  def change
    create_table :tables do |t|
      t.string :caption
      t.json :head
      t.json :body

      t.timestamps
    end
  end
end
