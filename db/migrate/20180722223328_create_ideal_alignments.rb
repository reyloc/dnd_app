class CreateIdealAlignments < ActiveRecord::Migration[5.2]
  def change
    create_table :ideal_alignments do |t|
      t.references :ideal, foreign_key: true
      t.references :alignment, foreign_key: true

      t.timestamps
    end
  end
end
