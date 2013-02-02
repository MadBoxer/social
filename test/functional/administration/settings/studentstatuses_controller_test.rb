require 'test_helper'

class Administration::Settings::StudentstatusesControllerTest < ActionController::TestCase
  setup do
    @administration_settings_studentstatus = administration_settings_studentstatuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:administration_settings_studentstatuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create administration_settings_studentstatus" do
    assert_difference('Administration::Settings::Studentstatus.count') do
      post :create, :administration_settings_studentstatus => {  }
    end

    assert_redirected_to administration_settings_studentstatus_path(assigns(:administration_settings_studentstatus))
  end

  test "should show administration_settings_studentstatus" do
    get :show, :id => @administration_settings_studentstatus
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @administration_settings_studentstatus
    assert_response :success
  end

  test "should update administration_settings_studentstatus" do
    put :update, :id => @administration_settings_studentstatus, :administration_settings_studentstatus => {  }
    assert_redirected_to administration_settings_studentstatus_path(assigns(:administration_settings_studentstatus))
  end

  test "should destroy administration_settings_studentstatus" do
    assert_difference('Administration::Settings::Studentstatus.count', -1) do
      delete :destroy, :id => @administration_settings_studentstatus
    end

    assert_redirected_to administration_settings_studentstatuses_path
  end
end
