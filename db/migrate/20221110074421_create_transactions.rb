# frozen_string_literal: true

class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.integer  :tid
      t.integer  :pos
      t.string   :acquirer
      t.integer  :tid
      t.integer  :mid
      t.integer  :batch_no
      t.integer  :card_no
      t.string   :name
      t.string   :card_issuer
      t.string   :card_type
      t.string   :card_network
      t.string   :card_colour
      t.integer  :txn_id
      t.integer  :invoice
      t.integer  :approval_code
      t.string   :type
      t.integer  :amount
      t.integer  :tip_amount
      t.string   :currency
      t.datetime :date
      t.string   :status
      t.datetime :settlement_date
      t.string   :cashier
      t.integer  :bill_invoice
      t.integer  :rrn
      t.integer  :emi_txn
      t.integer  :emi_month
      t.string   :contactless

      t.timestamps
    end
  end
end
