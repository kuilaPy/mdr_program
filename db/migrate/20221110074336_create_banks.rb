# frozen_string_literal: true

class CreateBanks < ActiveRecord::Migration[5.2]
  def change
    create_table :banks do |t|
      t.string  :bank_name
      t.string  :branch_address

      t.timestamps
    end
  end
end
