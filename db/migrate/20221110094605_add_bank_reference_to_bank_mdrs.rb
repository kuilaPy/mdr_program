# frozen_string_literal: true

class AddBankReferenceToBankMdrs < ActiveRecord::Migration[5.2]
  def change
    add_reference :bank_mdrs, :bank, foreign_key: true
  end
end
