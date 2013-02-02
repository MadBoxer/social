require 'test_helper'

class Administration::UsersControllerTest < ActionController::TestCase
  setup do
    @administration_user = administration_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:administration_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create administration_user" do
    assert_difference('Administration::User.count') do
      post :create, :administration_user => { :about_myself => @administration_user.about_myself, :activities => @administration_user.activities, :city_id => @administration_user.city_id, :email => @administration_user.email, :favourite_books => @administration_user.favourite_books, :favourite_films => @administration_user.favourite_films, :favourite_games => @administration_user.favourite_games, :favourite_phrases => @administration_user.favourite_phrases, :favourite_tv_shows => @administration_user.favourite_tv_shows, :marital_status_id => @administration_user.marital_status_id, :material_id => @administration_user.material_id, :mobile_phone => @administration_user.mobile_phone, :name => @administration_user.name, :password => @administration_user.password, :politic_id => @administration_user.politic_id, :religion_id => @administration_user.religion_id, :skype => @administration_user.skype, :surname => @administration_user.surname, :web_site => @administration_user.web_site }
    end

    assert_redirected_to administration_user_path(assigns(:administration_user))
  end

  test "should show administration_user" do
    get :show, :id => @administration_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @administration_user
    assert_response :success
  end

  test "should update administration_user" do
    put :update, :id => @administration_user, :administration_user => { :about_myself => @administration_user.about_myself, :activities => @administration_user.activities, :city_id => @administration_user.city_id, :email => @administration_user.email, :favourite_books => @administration_user.favourite_books, :favourite_films => @administration_user.favourite_films, :favourite_games => @administration_user.favourite_games, :favourite_phrases => @administration_user.favourite_phrases, :favourite_tv_shows => @administration_user.favourite_tv_shows, :marital_status_id => @administration_user.marital_status_id, :material_id => @administration_user.material_id, :mobile_phone => @administration_user.mobile_phone, :name => @administration_user.name, :password => @administration_user.password, :politic_id => @administration_user.politic_id, :religion_id => @administration_user.religion_id, :skype => @administration_user.skype, :surname => @administration_user.surname, :web_site => @administration_user.web_site }
    assert_redirected_to administration_user_path(assigns(:administration_user))
  end

  test "should destroy administration_user" do
    assert_difference('Administration::User.count', -1) do
      delete :destroy, :id => @administration_user
    end

    assert_redirected_to administration_users_path
  end
end
