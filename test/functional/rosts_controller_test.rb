require 'test_helper'

class RostsControllerTest < ActionController::TestCase
  setup do
    @rost = rosts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rosts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rost" do
    assert_difference('Rost.count') do
      post :create, rost: @rost.attributes
    end

    assert_redirected_to rost_path(assigns(:rost))
  end

  test "should show rost" do
    get :show, id: @rost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rost
    assert_response :success
  end

  test "should update rost" do
    put :update, id: @rost, rost: @rost.attributes
    assert_redirected_to rost_path(assigns(:rost))
  end

  test "should destroy rost" do
    assert_difference('Rost.count', -1) do
      delete :destroy, id: @rost
    end

    assert_redirected_to rosts_path
  end
end
