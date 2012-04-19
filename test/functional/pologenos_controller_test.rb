require 'test_helper'

class PologenosControllerTest < ActionController::TestCase
  setup do
    @pologeno = pologenos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pologenos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pologeno" do
    assert_difference('Pologeno.count') do
      post :create, pologeno: @pologeno.attributes
    end

    assert_redirected_to pologeno_path(assigns(:pologeno))
  end

  test "should show pologeno" do
    get :show, id: @pologeno
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pologeno
    assert_response :success
  end

  test "should update pologeno" do
    put :update, id: @pologeno, pologeno: @pologeno.attributes
    assert_redirected_to pologeno_path(assigns(:pologeno))
  end

  test "should destroy pologeno" do
    assert_difference('Pologeno.count', -1) do
      delete :destroy, id: @pologeno
    end

    assert_redirected_to pologenos_path
  end
end
