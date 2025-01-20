class GtBank < ApplicationRecord
  validates_presence_of :bank_name, :branch_name, :contact, :atm_model, :installation_date, :location,
                        :atm_serial_number
end
