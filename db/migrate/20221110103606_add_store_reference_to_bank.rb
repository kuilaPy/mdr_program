# frozen_string_literal: true

class AddStoreReferenceToBank < ActiveRecord::Migration[5.2]
  def change
    add_reference :banks, :store, foreign_key: true
  end
end
