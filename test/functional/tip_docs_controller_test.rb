require 'test_helper'

class TipDocsControllerTest < ActionController::TestCase
  setup do
    @tip_doc = tip_docs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tip_docs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tip_doc" do
    assert_difference('TipDoc.count') do
      post :create, tip_doc: @tip_doc.attributes
    end

    assert_redirected_to tip_doc_path(assigns(:tip_doc))
  end

  test "should show tip_doc" do
    get :show, id: @tip_doc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tip_doc
    assert_response :success
  end

  test "should update tip_doc" do
    put :update, id: @tip_doc, tip_doc: @tip_doc.attributes
    assert_redirected_to tip_doc_path(assigns(:tip_doc))
  end

  test "should destroy tip_doc" do
    assert_difference('TipDoc.count', -1) do
      delete :destroy, id: @tip_doc
    end

    assert_redirected_to tip_docs_path
  end
end
