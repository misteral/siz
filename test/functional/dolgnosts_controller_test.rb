require 'test_helper'

class DolgnostsControllerTest < ActionController::TestCase
  setup do
    @dolgnost = dolgnosts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dolgnosts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dolgnost" do
    assert_difference('Dolgnost.count') do
      post :create, dolgnost: @dolgnost.attributes
    end

    assert_redirected_to dolgnost_path(assigns(:dolgnost))
  end

  test "should show dolgnost" do
    get :show, id: @dolgnost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dolgnost
    assert_response :success
  end

  test "should update dolgnost" do
    put :update, id: @dolgnost, dolgnost: @dolgnost.attributes
    assert_redirected_to dolgnost_path(assigns(:dolgnost))
  end

  test "should destroy dolgnost" do
    assert_difference('Dolgnost.count', -1) do
      delete :destroy, id: @dolgnost
    end

    assert_redirected_to dolgnosts_path
  end
end
