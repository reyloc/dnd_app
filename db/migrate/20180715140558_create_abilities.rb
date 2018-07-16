# frozen_string_literal: true

class CreateAbilities < ActiveRecord::Migration[5.2]
  def change
    create_table :abilities do |t|
      t.string :name, null: false
      t.string :description, null: false
      t.timestamps
    end
    add_index :abilities, :name, unique: true
  end
end
