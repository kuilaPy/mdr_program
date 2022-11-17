class AddDeviceReferenceToTerminal < ActiveRecord::Migration[5.2]
  def change
    add_reference :terminals, :device, foreign_key: true
  end
end
