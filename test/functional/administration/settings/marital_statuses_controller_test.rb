require 'test_helper'

class Administration::Settings::MaritalStatusesControllerTest < ActionController::TestCase
  setup do
    @administration_settings_marital_status = administration_settings_marital_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:administration_settings_marital_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create administration_settings_marital_status" do
    assert_difference('Administration::Settings::MaritalStatus.count') do
      post :create, :administration_settings_marital_status => { :name => @administration_settings_marital_status.name }
    end

    assert_redirected_to administration_settings_marital_status_path(assigns(:administration_settings_marital_status))
  end

  test "should show administration_settings_marital_status" do
    get :show, :id => @administration_settings_marital_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @administration_settings_marital_status
    assert_response :success
  end

  test "should update administration_settings_marital_status" do
    put :update, :id => @administration_settings_marital_status, :administration_settings_marital_status => { :name => @administration_settings_marital_status.name }
    assert_redirected_to administration_settings_marital_status_path(assigns(:administration_settings_marital_status))
  end

  test "should destroy administration_settings_marital_status" do
    assert_difference('Administration::Settings::MaritalStatus.count', -1) do
      delete :destroy, :id => @administration_settings_marital_status
    end

    assert_redirected_to administration_settings_marital_statuses_path
  end
end
