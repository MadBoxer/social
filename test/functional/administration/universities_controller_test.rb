require 'test_helper'

class Administration::UniversitiesControllerTest < ActionController::TestCase
  setup do
    @administration_university = administration_universities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:administration_universities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create administration_university" do
    assert_difference('Administration::University.count') do
      post :create, :administration_university => { :abbr => @administration_university.abbr, :city_id => @administration_university.city_id, :name => @administration_university.name }
    end

    assert_redirected_to administration_university_path(assigns(:administration_university))
  end

  test "should show administration_university" do
    get :show, :id => @administration_university
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @administration_university
    assert_response :success
  end

  test "should update administration_university" do
    put :update, :id => @administration_university, :administration_university => { :abbr => @administration_university.abbr, :city_id => @administration_university.city_id, :name => @administration_university.name }
    assert_redirected_to administration_university_path(assigns(:administration_university))
  end

  test "should destroy administration_university" do
    assert_difference('Administration::University.count', -1) do
      delete :destroy, :id => @administration_university
    end

    assert_redirected_to administration_universities_path
  end
end
