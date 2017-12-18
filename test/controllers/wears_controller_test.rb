require 'test_helper'

class WearsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get wears_index_url
    assert_response :success
  end

end
