# frozen_string_literal: true

class CreateCloths < ActiveRecord::Migration[7.0]
  def change
    create_table :cloths do |t|
      t.string :name, null: false
      t.string :category, null: false
      t.integer :level, null: false
      t.string :game_class, null: false
      t.string :kind, null: false
      t.string :image, null: false

      t.timestamps
    end
  end
end
