# frozen_string_literal: true

class Store < ApplicationRecord
  has_many :store_mdrs
  has_many :terminals
  belongs_to :bank, optional: true
end
