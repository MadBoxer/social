require 'test_helper'

class Administration::Settings::ReligionsControllerTest < ActionController::TestCase
  setup do
    @administration_settings_religion = administration_settings_religions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:administration_settings_religions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create administration_settings_religion" do
    assert_difference('Administration::Settings::Religion.count') do
      post :create, :administration_settings_religion => { :name => @administration_settings_religion.name }
    end

    assert_redirected_to administration_settings_religion_path(assigns(:administration_settings_religion))
  end

  test "should show administration_settings_religion" do
    get :show, :id => @administration_settings_religion
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @administration_settings_religion
    assert_response :success
  end

  test "should update administration_settings_religion" do
    put :update, :id => @administration_settings_religion, :administration_settings_religion => { :name => @administration_settings_religion.name }
    assert_redirected_to administration_settings_religion_path(assigns(:administration_settings_religion))
  end

  test "should destroy administration_settings_religion" do
    assert_difference('Administration::Settings::Religion.count', -1) do
      delete :destroy, :id => @administration_settings_religion
    end

    assert_redirected_to administration_settings_religions_path
  end
end
