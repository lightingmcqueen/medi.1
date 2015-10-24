require 'test_helper'

class ClinicsControllerTest < ActionController::TestCase
  setup do
    @clinic = clinics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clinics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clinic" do
    assert_difference('Clinic.count') do
      post :create, clinic: { accreditations_name: @clinic.accreditations_name, address_line_1: @clinic.address_line_1, address_line_2: @clinic.address_line_2, city: @clinic.city, coordinator: @clinic.coordinator, country: @clinic.country, description: @clinic.description, phone_country_code: @clinic.phone_country_code, ratings: @clinic.ratings, services: @clinic.services, title: @clinic.title, zipcode: @clinic.zipcode }
    end

    assert_redirected_to clinic_path(assigns(:clinic))
  end

  test "should show clinic" do
    get :show, id: @clinic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clinic
    assert_response :success
  end

  test "should update clinic" do
    patch :update, id: @clinic, clinic: { accreditations_name: @clinic.accreditations_name, address_line_1: @clinic.address_line_1, address_line_2: @clinic.address_line_2, city: @clinic.city, coordinator: @clinic.coordinator, country: @clinic.country, description: @clinic.description, phone_country_code: @clinic.phone_country_code, ratings: @clinic.ratings, services: @clinic.services, title: @clinic.title, zipcode: @clinic.zipcode }
    assert_redirected_to clinic_path(assigns(:clinic))
  end

  test "should destroy clinic" do
    assert_difference('Clinic.count', -1) do
      delete :destroy, id: @clinic
    end

    assert_redirected_to clinics_path
  end
end
