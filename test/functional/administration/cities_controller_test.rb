require 'test_helper'

class Administration::CitiesControllerTest < ActionController::TestCase
  setup do
    @administration_city = administration_cities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:administration_cities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create administration_city" do
    assert_difference('Administration::City.count') do
      post :create, :administration_city => { :alias => @administration_city.alias, :avatar => @administration_city.avatar, :country_id => @administration_city.country_id, :name => @administration_city.name }
    end

    assert_redirected_to administration_city_path(assigns(:administration_city))
  end

  test "should show administration_city" do
    get :show, :id => @administration_city
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @administration_city
    assert_response :success
  end

  test "should update administration_city" do
    put :update, :id => @administration_city, :administration_city => { :alias => @administration_city.alias, :avatar => @administration_city.avatar, :country_id => @administration_city.country_id, :name => @administration_city.name }
    assert_redirected_to administration_city_path(assigns(:administration_city))
  end

  test "should destroy administration_city" do
    assert_difference('Administration::City.count', -1) do
      delete :destroy, :id => @administration_city
    end

    assert_redirected_to administration_cities_path
  end
end
