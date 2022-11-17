# frozen_string_literal: true

class AddStoreReferenceToStoreMdrs < ActiveRecord::Migration[5.2]
  def change
    add_reference :store_mdrs, :store, foreign_key: true
    
  end
end
