require 'test_helper'

class ReferralsControllerTest < ActionController::TestCase
  setup do
    @referral = referrals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:referrals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create referral" do
    assert_difference('Referral.count') do
      post :create, referral: { company_name: @referral.company_name, contact_email: @referral.contact_email, contact_mobile: @referral.contact_mobile, contact_name: @referral.contact_name, machine_brand: @referral.machine_brand, machine_weightclass: @referral.machine_weightclass, message: @referral.message, phone: @referral.phone, user_id: @referral.user_id }
    end

    assert_redirected_to referral_path(assigns(:referral))
  end

  test "should show referral" do
    get :show, id: @referral
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @referral
    assert_response :success
  end

  test "should update referral" do
    patch :update, id: @referral, referral: { company_name: @referral.company_name, contact_email: @referral.contact_email, contact_mobile: @referral.contact_mobile, contact_name: @referral.contact_name, machine_brand: @referral.machine_brand, machine_weightclass: @referral.machine_weightclass, message: @referral.message, phone: @referral.phone, user_id: @referral.user_id }
    assert_redirected_to referral_path(assigns(:referral))
  end

  test "should destroy referral" do
    assert_difference('Referral.count', -1) do
      delete :destroy, id: @referral
    end

    assert_redirected_to referrals_path
  end
end
