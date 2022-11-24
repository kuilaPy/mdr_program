# frozen_string_literal: true

require 'test_helper'

class BankMdrsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get bank_mdrs_index_url
    assert_response :success
  end

  test 'should get show' do
    get bank_mdrs_show_url
    assert_response :success
  end

  test 'should get new' do
    get bank_mdrs_new_url
    assert_response :success
  end

  test 'should get create' do
    get bank_mdrs_create_url
    assert_response :success
  end

  test 'should get edit' do
    get bank_mdrs_edit_url
    assert_response :success
  end

  test 'should get destroy' do
    get bank_mdrs_destroy_url
    assert_response :success
  end
end
