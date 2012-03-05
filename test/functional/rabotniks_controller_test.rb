require 'test_helper'

class RabotniksControllerTest < ActionController::TestCase
  setup do
    @rabotnik = rabotniks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rabotniks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rabotnik" do
    assert_difference('Rabotnik.count') do
      post :create, rabotnik: @rabotnik.attributes
    end

    assert_redirected_to rabotnik_path(assigns(:rabotnik))
  end

  test "should show rabotnik" do
    get :show, id: @rabotnik
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rabotnik
    assert_response :success
  end

  test "should update rabotnik" do
    put :update, id: @rabotnik, rabotnik: @rabotnik.attributes
    assert_redirected_to rabotnik_path(assigns(:rabotnik))
  end

  test "should destroy rabotnik" do
    assert_difference('Rabotnik.count', -1) do
      delete :destroy, id: @rabotnik
    end

    assert_redirected_to rabotniks_path
  end
end
