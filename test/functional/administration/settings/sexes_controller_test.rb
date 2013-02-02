require 'test_helper'

class Administration::Settings::SexesControllerTest < ActionController::TestCase
  setup do
    @administration_settings_sex = administration_settings_sexes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:administration_settings_sexes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create administration_settings_sex" do
    assert_difference('Administration::Settings::Sex.count') do
      post :create, :administration_settings_sex => {  }
    end

    assert_redirected_to administration_settings_sex_path(assigns(:administration_settings_sex))
  end

  test "should show administration_settings_sex" do
    get :show, :id => @administration_settings_sex
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @administration_settings_sex
    assert_response :success
  end

  test "should update administration_settings_sex" do
    put :update, :id => @administration_settings_sex, :administration_settings_sex => {  }
    assert_redirected_to administration_settings_sex_path(assigns(:administration_settings_sex))
  end

  test "should destroy administration_settings_sex" do
    assert_difference('Administration::Settings::Sex.count', -1) do
      delete :destroy, :id => @administration_settings_sex
    end

    assert_redirected_to administration_settings_sexes_path
  end
end
