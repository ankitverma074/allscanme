require 'test_helper'

class QrhndlControllerTest < ActionController::TestCase
  test "should get qrgen" do
    get :qrgen
    assert_response :success
  end

end
