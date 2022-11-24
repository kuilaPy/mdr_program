# frozen_string_literal: true

class CreateStoreMdrs < ActiveRecord::Migration[5.2]
  def change
    create_table :store_mdrs do |t|
      t.string  :payment_mode
      t.float   :rate_amount
      t.string  :rate_type
      t.integer :upto_amount
      t.integer :from_amount

      t.timestamps
    end
  end
end
