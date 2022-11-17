class CreateDevices < ActiveRecord::Migration[5.2]
  def change
    create_table :devices do |t|
      t.string :serial_no
      t.string :remarks
      t.string :status

      t.timestamps
    end
  end
end
