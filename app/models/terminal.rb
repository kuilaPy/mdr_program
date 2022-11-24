class Terminal < ApplicationRecord
    has_one  :store_terminal, dependent: :destroy
    validates :tid, uniqueness: true
end
