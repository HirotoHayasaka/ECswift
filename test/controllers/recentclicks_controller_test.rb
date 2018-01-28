require 'test_helper'

class RecentclicksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get recentclicks_index_url
    assert_response :success
  end

end
