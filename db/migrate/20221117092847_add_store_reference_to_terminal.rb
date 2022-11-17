class AddStoreReferenceToTerminal < ActiveRecord::Migration[5.2]
  def change
    add_reference :terminals, :store, foreign_key: true
  end
end
