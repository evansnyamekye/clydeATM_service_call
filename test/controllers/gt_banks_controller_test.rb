require 'test_helper'

class GtBanksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gt_bank = gt_banks(:one)
  end

  test 'should get index' do
    get gt_banks_url
    assert_response :success
  end

  test 'should get new' do
    get new_gt_bank_url
    assert_response :success
  end

  test 'should create gt_bank' do
    assert_difference('GtBank.count') do
      post gt_banks_url,
           params: { gt_bank: { atm_model: @gt_bank.atm_model, atm_serial_number: @gt_bank.atm_serial_number,
                                bank_name: @gt_bank.bank_name, branch_name: @gt_bank.branch_name, contact: @gt_bank.contact, custodian_name: @gt_bank.custodian_name, installation_date: @gt_bank.installation_date, location: @gt_bank.location } }
    end

    assert_redirected_to gt_bank_url(GtBank.last)
  end

  test 'should show gt_bank' do
    get gt_bank_url(@gt_bank)
    assert_response :success
  end

  test 'should get edit' do
    get edit_gt_bank_url(@gt_bank)
    assert_response :success
  end

  test 'should update gt_bank' do
    patch gt_bank_url(@gt_bank),
          params: { gt_bank: { atm_model: @gt_bank.atm_model, atm_serial_number: @gt_bank.atm_serial_number,
                               bank_name: @gt_bank.bank_name, branch_name: @gt_bank.branch_name, contact: @gt_bank.contact, custodian_name: @gt_bank.custodian_name, installation_date: @gt_bank.installation_date, location: @gt_bank.location } }
    assert_redirected_to gt_bank_url(@gt_bank)
  end

  test 'should destroy gt_bank' do
    assert_difference('GtBank.count', -1) do
      delete gt_bank_url(@gt_bank)
    end

    assert_redirected_to gt_banks_url
  end
end
