# frozen_string_literal: true

class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.string  :store_name, limit: 100, require: true
      t.string  :store_address
      t.string  :store_phone_number
      t.string  :owner_name, require: true
      t.string  :store_owner_phone_number
      t.string  :email
      t.string  :gst_no
      t.binary  :gst_certificate
      t.string  :pan_no
      t.binary  :pan_card
      t.string  :trade_license
      t.binary  :trade_license_certificate
      t.string  :bank_name
      t.integer :account_no
      t.string  :ifsc_code
      t.string  :bank_branch_address
      t.binary  :uploading_of_cancelled_cheque
      t.string  :dealer_name
      t.string  :dealer_sales_person
      t.binary  :store_acquisition_form

      t.timestamps
    end
  end
end
