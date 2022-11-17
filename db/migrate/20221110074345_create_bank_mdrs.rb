# frozen_string_literal: true

class CreateBankMdrs < ActiveRecord::Migration[5.2]
  def change
    create_table :bank_mdrs do |t|
      t.string  :payment_mode
      t.integer :rate_amount
      t.string  :rate_type
      t.integer :upto_amount
      t.integer :from_amount

      t.timestamps
    end
  end
end
