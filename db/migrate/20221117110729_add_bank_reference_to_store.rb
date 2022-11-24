# frozen_string_literal: true

class AddBankReferenceToStore < ActiveRecord::Migration[5.2]
  def change
    add_reference :stores, :bank, foreign_key: true
  end
end
