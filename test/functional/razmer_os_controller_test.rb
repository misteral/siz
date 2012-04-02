require 'test_helper'

class RazmerOsControllerTest < ActionController::TestCase
  setup do
    @razmer_o = razmer_os(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:razmer_os)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create razmer_o" do
    assert_difference('RazmerO.count') do
      post :create, razmer_o: @razmer_o.attributes
    end

    assert_redirected_to razmer_o_path(assigns(:razmer_o))
  end

  test "should show razmer_o" do
    get :show, id: @razmer_o
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @razmer_o
    assert_response :success
  end

  test "should update razmer_o" do
    put :update, id: @razmer_o, razmer_o: @razmer_o.attributes
    assert_redirected_to razmer_o_path(assigns(:razmer_o))
  end

  test "should destroy razmer_o" do
    assert_difference('RazmerO.count', -1) do
      delete :destroy, id: @razmer_o
    end

    assert_redirected_to razmer_os_path
  end
end
