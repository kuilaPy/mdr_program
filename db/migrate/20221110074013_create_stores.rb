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
      t.integer :gst_no
      t.binary  :gst_certificate
      t.string  :pan_no
      t.binary  :pan_card
      t.string  :trade_licence
      t.binary  :trade_licence_certificate
      t.string  :Bank_details
      t.binary  :uploading_of_cancelled_cheque
      t.string  :dealer_name
      t.binary  :store_acquisition_form

      t.timestamps
    end
  end
end
