# frozen_string_literal: true

class CreateTerminals < ActiveRecord::Migration[5.2]
  def change
    create_table :terminals do |t|
      t.integer :tid
      t.string  :remarks
      t.string  :status

      t.timestamps
    end
  end
end
