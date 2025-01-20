require 'application_system_test_case'

class GtBanksTest < ApplicationSystemTestCase
  setup do
    @gt_bank = gt_banks(:one)
  end

  test 'visiting the index' do
    visit gt_banks_url
    assert_selector 'h1', text: 'GT Bank'
  end

  test 'should create gt bank' do
    visit gt_banks_url
    click_on 'New gt bank'

    fill_in 'Atm model', with: @gt_bank.atm_model
    fill_in 'Atm serial number', with: @gt_bank.atm_serial_number
    fill_in 'Bank name', with: @gt_bank.bank_name
    fill_in 'Branch name', with: @gt_bank.branch_name
    fill_in 'Contact', with: @gt_bank.contact
    fill_in 'Custodian name', with: @gt_bank.custodian_name
    fill_in 'Installation date', with: @gt_bank.installation_date
    fill_in 'Location', with: @gt_bank.location
    click_on 'Create Gt bank'

    assert_text 'Gt bank was successfully created'
    click_on 'Back'
  end

  test 'should update Gt bank' do
    visit gt_bank_url(@gt_bank)
    click_on 'Edit this gt bank', match: :first

    fill_in 'Atm model', with: @gt_bank.atm_model
    fill_in 'Atm serial number', with: @gt_bank.atm_serial_number
    fill_in 'Bank name', with: @gt_bank.bank_name
    fill_in 'Branch name', with: @gt_bank.branch_name
    fill_in 'Contact', with: @gt_bank.contact
    fill_in 'Custodian name', with: @gt_bank.custodian_name
    fill_in 'Installation date', with: @gt_bank.installation_date
    fill_in 'Location', with: @gt_bank.location
    click_on 'Update Gt bank'

    assert_text 'Gt bank was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Gt bank' do
    visit gt_bank_url(@gt_bank)
    click_on 'Destroy this gt bank', match: :first

    assert_text 'Gt bank was successfully destroyed'
  end
end
