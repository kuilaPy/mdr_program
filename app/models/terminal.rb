# frozen_string_literal: true

class Terminal < ApplicationRecord
  belongs_to :store
  belongs_to :device
end
