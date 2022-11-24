# frozen_string_literal: true

class Bank < ApplicationRecord
  has_many :bank_mdrs , dependent: :destroy
  has_one :store , dependent: :destroy
end
