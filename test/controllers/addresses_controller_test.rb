require 'test_helper'

class AddressesControllerTest < ActionController::TestCase
  setup do
    @address = addresses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:addresses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create address" do
    assert_difference('Address.count') do
      post :create, address: { city: @address.city, contact_id: @address.contact_id, country: @address.country, do_not_display: @address.do_not_display, do_not_locate: @address.do_not_locate, non_us_postal_code: @address.non_us_postal_code, non_us_state_province_region: @address.non_us_state_province_region, profile_id: @address.profile_id, state: @address.state, street: @address.street, type: @address.type, user_id: @address.user_id, zip: @address.zip }
    end

    assert_redirected_to address_path(assigns(:address))
  end

  test "should show address" do
    get :show, id: @address
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @address
    assert_response :success
  end

  test "should update address" do
    patch :update, id: @address, address: { city: @address.city, contact_id: @address.contact_id, country: @address.country, do_not_display: @address.do_not_display, do_not_locate: @address.do_not_locate, non_us_postal_code: @address.non_us_postal_code, non_us_state_province_region: @address.non_us_state_province_region, profile_id: @address.profile_id, state: @address.state, street: @address.street, type: @address.type, user_id: @address.user_id, zip: @address.zip }
    assert_redirected_to address_path(assigns(:address))
  end

  test "should destroy address" do
    assert_difference('Address.count', -1) do
      delete :destroy, id: @address
    end

    assert_redirected_to addresses_path
  end
end
