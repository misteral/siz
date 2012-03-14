require 'test_helper'

class VidSosControllerTest < ActionController::TestCase
  setup do
    @vid_so = vid_sos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vid_sos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vid_so" do
    assert_difference('VidSo.count') do
      post :create, vid_so: @vid_so.attributes
    end

    assert_redirected_to vid_so_path(assigns(:vid_so))
  end

  test "should show vid_so" do
    get :show, id: @vid_so
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vid_so
    assert_response :success
  end

  test "should update vid_so" do
    put :update, id: @vid_so, vid_so: @vid_so.attributes
    assert_redirected_to vid_so_path(assigns(:vid_so))
  end

  test "should destroy vid_so" do
    assert_difference('VidSo.count', -1) do
      delete :destroy, id: @vid_so
    end

    assert_redirected_to vid_sos_path
  end
end
