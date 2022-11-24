# frozen_string_literal: true

class Device < ApplicationRecord
  has_one :terminal, dependent: :destroy
  validates :serial_no, uniqueness: true
end
