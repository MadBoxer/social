require 'test_helper'

class Administration::Settings::CountriesControllerTest < ActionController::TestCase
  setup do
    @administration_settings_country = administration_settings_countries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:administration_settings_countries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create administration_settings_country" do
    assert_difference('Administration::Settings::Country.count') do
      post :create, :administration_settings_country => { :name => @administration_settings_country.name }
    end

    assert_redirected_to administration_settings_country_path(assigns(:administration_settings_country))
  end

  test "should show administration_settings_country" do
    get :show, :id => @administration_settings_country
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @administration_settings_country
    assert_response :success
  end

  test "should update administration_settings_country" do
    put :update, :id => @administration_settings_country, :administration_settings_country => { :name => @administration_settings_country.name }
    assert_redirected_to administration_settings_country_path(assigns(:administration_settings_country))
  end

  test "should destroy administration_settings_country" do
    assert_difference('Administration::Settings::Country.count', -1) do
      delete :destroy, :id => @administration_settings_country
    end

    assert_redirected_to administration_settings_countries_path
  end
end
