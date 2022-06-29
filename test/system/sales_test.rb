# frozen_string_literal: true

require 'application_system_test_case'

class SalesTest < ApplicationSystemTestCase
  setup do
    @sale = sales(:one)
  end

  test 'visiting the index' do
    visit sales_url
    assert_selector 'h1', text: 'Sales'
  end

  test 'should create sale' do
    visit sales_url
    click_on 'New sale'

    fill_in 'Amount', with: @sale.amount
    fill_in 'Company', with: @sale.company_id
    fill_in 'Customer', with: @sale.customer_id
    check 'Is product' if @sale.is_product
    check 'Is service' if @sale.is_service
    fill_in 'Products', with: @sale.products
    fill_in 'Services', with: @sale.services
    fill_in 'Status', with: @sale.status
    click_on 'Create Sale'

    assert_text 'Sale was successfully created'
    click_on 'Back'
  end

  test 'should update Sale' do
    visit sale_url(@sale)
    click_on 'Edit this sale', match: :first

    fill_in 'Amount', with: @sale.amount
    fill_in 'Company', with: @sale.company_id
    fill_in 'Customer', with: @sale.customer_id
    check 'Is product' if @sale.is_product
    check 'Is service' if @sale.is_service
    fill_in 'Products', with: @sale.products
    fill_in 'Services', with: @sale.services
    fill_in 'Status', with: @sale.status
    click_on 'Update Sale'

    assert_text 'Sale was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Sale' do
    visit sale_url(@sale)
    click_on 'Destroy this sale', match: :first

    assert_text 'Sale was successfully destroyed'
  end
end
