require 'test_helper'

class RegDrsControllerTest < ActionController::TestCase
  setup do
    @reg_dr = reg_drs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reg_drs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reg_dr" do
    assert_difference('RegDr.count') do
      post :create, reg_dr: @reg_dr.attributes
    end

    assert_redirected_to reg_dr_path(assigns(:reg_dr))
  end

  test "should show reg_dr" do
    get :show, id: @reg_dr
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reg_dr
    assert_response :success
  end

  test "should update reg_dr" do
    put :update, id: @reg_dr, reg_dr: @reg_dr.attributes
    assert_redirected_to reg_dr_path(assigns(:reg_dr))
  end

  test "should destroy reg_dr" do
    assert_difference('RegDr.count', -1) do
      delete :destroy, id: @reg_dr
    end

    assert_redirected_to reg_drs_path
  end
end
