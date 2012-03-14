require 'test_helper'

class PostavshiksControllerTest < ActionController::TestCase
  setup do
    @postavshik = postavshiks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:postavshiks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create postavshik" do
    assert_difference('Postavshik.count') do
      post :create, postavshik: @postavshik.attributes
    end

    assert_redirected_to postavshik_path(assigns(:postavshik))
  end

  test "should show postavshik" do
    get :show, id: @postavshik
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @postavshik
    assert_response :success
  end

  test "should update postavshik" do
    put :update, id: @postavshik, postavshik: @postavshik.attributes
    assert_redirected_to postavshik_path(assigns(:postavshik))
  end

  test "should destroy postavshik" do
    assert_difference('Postavshik.count', -1) do
      delete :destroy, id: @postavshik
    end

    assert_redirected_to postavshiks_path
  end
end
