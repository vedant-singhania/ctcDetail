require 'test_helper'

class CrewsControllerTest < ActionController::TestCase
  setup do
    @crew = crews(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:crews)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create crew" do
    assert_difference('Crew.count') do
      post :create, crew: { car_number: @crew.car_number, driver_name: @crew.driver_name, phone_number: @crew.phone_number }
    end

    assert_redirected_to crew_path(assigns(:crew))
  end

  test "should show crew" do
    get :show, id: @crew
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @crew
    assert_response :success
  end

  test "should update crew" do
    patch :update, id: @crew, crew: { car_number: @crew.car_number, driver_name: @crew.driver_name, phone_number: @crew.phone_number }
    assert_redirected_to crew_path(assigns(:crew))
  end

  test "should destroy crew" do
    assert_difference('Crew.count', -1) do
      delete :destroy, id: @crew
    end

    assert_redirected_to crews_path
  end
end
