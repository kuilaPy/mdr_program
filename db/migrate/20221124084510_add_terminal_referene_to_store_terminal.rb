class AddTerminalRefereneToStoreTerminal < ActiveRecord::Migration[5.2]
  def change
    add_reference :store_terminals, :terminal, foreign_key: true
  end
end
