# frozen_string_literal: true

class Bank < ApplicationRecord
  has_many :bank_mdrs
  has_one :store
end
