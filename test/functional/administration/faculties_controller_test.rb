require 'test_helper'

class Administration::FacultiesControllerTest < ActionController::TestCase
  setup do
    @administration_faculty = administration_faculties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:administration_faculties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create administration_faculty" do
    assert_difference('Administration::Faculty.count') do
      post :create, :administration_faculty => { :name => @administration_faculty.name, :univercity_id => @administration_faculty.univercity_id }
    end

    assert_redirected_to administration_faculty_path(assigns(:administration_faculty))
  end

  test "should show administration_faculty" do
    get :show, :id => @administration_faculty
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @administration_faculty
    assert_response :success
  end

  test "should update administration_faculty" do
    put :update, :id => @administration_faculty, :administration_faculty => { :name => @administration_faculty.name, :univercity_id => @administration_faculty.univercity_id }
    assert_redirected_to administration_faculty_path(assigns(:administration_faculty))
  end

  test "should destroy administration_faculty" do
    assert_difference('Administration::Faculty.count', -1) do
      delete :destroy, :id => @administration_faculty
    end

    assert_redirected_to administration_faculties_path
  end
end
