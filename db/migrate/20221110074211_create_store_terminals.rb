# frozen_string_literal: true

class CreateStoreTerminals < ActiveRecord::Migration[5.2]
  def change
    create_table :store_terminals do |t|
      t.string  :remarks
      t.string :status

      t.timestamps
    end
  end
end
