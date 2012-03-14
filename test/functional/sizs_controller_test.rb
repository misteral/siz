require 'test_helper'

class SizsControllerTest < ActionController::TestCase
  setup do
    @siz = sizs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sizs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create siz" do
    assert_difference('Siz.count') do
      post :create, siz: @siz.attributes
    end

    assert_redirected_to siz_path(assigns(:siz))
  end

  test "should show siz" do
    get :show, id: @siz
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @siz
    assert_response :success
  end

  test "should update siz" do
    put :update, id: @siz, siz: @siz.attributes
    assert_redirected_to siz_path(assigns(:siz))
  end

  test "should destroy siz" do
    assert_difference('Siz.count', -1) do
      delete :destroy, id: @siz
    end

    assert_redirected_to sizs_path
  end
end
