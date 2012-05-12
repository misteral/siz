require 'test_helper'

class ReportsControllerTest < ActionController::TestCase
  test "should get ostatoks" do
    get :ostatoks
    assert_response :success
  end

end
