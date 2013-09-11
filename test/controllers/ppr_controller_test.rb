require 'test_helper'

class PprControllerTest < ActionController::TestCase
  test "should get setfirstname" do
    get :setfirstname
    assert_response :success
  end

end
