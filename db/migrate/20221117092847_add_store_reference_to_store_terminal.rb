# frozen_string_literal: true

class AddStoreReferenceToStoreTerminal < ActiveRecord::Migration[5.2]
  def change
    add_reference :store_terminals, :store, foreign_key: true
  end
end
