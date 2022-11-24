# frozen_string_literal: true

class StoreTerminal < ApplicationRecord
  belongs_to :store
  belongs_to :device
  belongs_to :terminal
  validates :device_id, uniqueness: true
end
