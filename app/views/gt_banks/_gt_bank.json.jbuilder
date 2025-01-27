json.extract! gt_bank, :id, :bank_name, :branch_name, :custodian_name, :contact, :atm_model, :installation_date,
              :location, :atm_serial_number, :created_at, :updated_at
json.url gt_bank_url(gt_bank, format: :json)
