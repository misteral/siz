require 'test_helper'

class RazmerOdsControllerTest < ActionController::TestCase
  setup do
    @razmer_od = razmer_ods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:razmer_ods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create razmer_od" do
    assert_difference('RazmerOd.count') do
      post :create, razmer_od: @razmer_od.attributes
    end

    assert_redirected_to razmer_od_path(assigns(:razmer_od))
  end

  test "should show razmer_od" do
    get :show, id: @razmer_od
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @razmer_od
    assert_response :success
  end

  test "should update razmer_od" do
    put :update, id: @razmer_od, razmer_od: @razmer_od.attributes
    assert_redirected_to razmer_od_path(assigns(:razmer_od))
  end

  test "should destroy razmer_od" do
    assert_difference('RazmerOd.count', -1) do
      delete :destroy, id: @razmer_od
    end

    assert_redirected_to razmer_ods_path
  end
end
