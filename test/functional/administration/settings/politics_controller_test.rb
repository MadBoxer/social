require 'test_helper'

class Administration::Settings::PoliticsControllerTest < ActionController::TestCase
  setup do
    @administration_settings_politic = administration_settings_politics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:administration_settings_politics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create administration_settings_politic" do
    assert_difference('Administration::Settings::Politic.count') do
      post :create, :administration_settings_politic => { :name => @administration_settings_politic.name }
    end

    assert_redirected_to administration_settings_politic_path(assigns(:administration_settings_politic))
  end

  test "should show administration_settings_politic" do
    get :show, :id => @administration_settings_politic
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @administration_settings_politic
    assert_response :success
  end

  test "should update administration_settings_politic" do
    put :update, :id => @administration_settings_politic, :administration_settings_politic => { :name => @administration_settings_politic.name }
    assert_redirected_to administration_settings_politic_path(assigns(:administration_settings_politic))
  end

  test "should destroy administration_settings_politic" do
    assert_difference('Administration::Settings::Politic.count', -1) do
      delete :destroy, :id => @administration_settings_politic
    end

    assert_redirected_to administration_settings_politics_path
  end
end
