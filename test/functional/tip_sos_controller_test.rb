require 'test_helper'

class TipSosControllerTest < ActionController::TestCase
  setup do
    @tip_so = tip_sos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tip_sos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tip_so" do
    assert_difference('TipSo.count') do
      post :create, tip_so: @tip_so.attributes
    end

    assert_redirected_to tip_so_path(assigns(:tip_so))
  end

  test "should show tip_so" do
    get :show, id: @tip_so
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tip_so
    assert_response :success
  end

  test "should update tip_so" do
    put :update, id: @tip_so, tip_so: @tip_so.attributes
    assert_redirected_to tip_so_path(assigns(:tip_so))
  end

  test "should destroy tip_so" do
    assert_difference('TipSo.count', -1) do
      delete :destroy, id: @tip_so
    end

    assert_redirected_to tip_sos_path
  end
end
