# frozen_string_literal: true

class AddDeviceReferenceToStoreTerminal < ActiveRecord::Migration[5.2]
  def change
    add_reference :store_terminals, :device, foreign_key: true
  end
end
