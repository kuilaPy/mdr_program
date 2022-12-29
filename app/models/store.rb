# frozen_string_literal: true

class Store < ApplicationRecord
  has_many :store_mdrs, dependent: :destroy
  has_many :store_terminals, dependent: :destroy
  belongs_to :bank
  validates  :store_name, :store_address, :owner_name, :store_owner_phone_number, :pan_no, :bank_name, :account_no,
             :ifsc_code, :uploading_of_cancelled_cheque, presence: true
end
