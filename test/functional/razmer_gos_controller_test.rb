require 'test_helper'

class RazmerGosControllerTest < ActionController::TestCase
  setup do
    @razmer_go = razmer_gos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:razmer_gos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create razmer_go" do
    assert_difference('RazmerGo.count') do
      post :create, razmer_go: @razmer_go.attributes
    end

    assert_redirected_to razmer_go_path(assigns(:razmer_go))
  end

  test "should show razmer_go" do
    get :show, id: @razmer_go
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @razmer_go
    assert_response :success
  end

  test "should update razmer_go" do
    put :update, id: @razmer_go, razmer_go: @razmer_go.attributes
    assert_redirected_to razmer_go_path(assigns(:razmer_go))
  end

  test "should destroy razmer_go" do
    assert_difference('RazmerGo.count', -1) do
      delete :destroy, id: @razmer_go
    end

    assert_redirected_to razmer_gos_path
  end
end
