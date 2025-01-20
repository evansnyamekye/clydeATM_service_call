class CreateGtBanks < ActiveRecord::Migration[8.0]
  def change
    create_table :gt_banks do |t|
      t.string :bank_name
      t.string :branch_name
      t.string :custodian_name
      t.integer :custodain_contact
      t.string  :gps_address
      t.integer :contact
      t.string :atm_model
      t.date :installation_date
      t.string :location
      t.string :atm_serial_number

      t.timestamps
    end
  end
end
