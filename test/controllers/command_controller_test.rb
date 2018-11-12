require 'test_helper'

class CommandControllerTest < ActionDispatch::IntegrationTest
  test "should get daily_report" do
    get command_daily_report_url
    assert_response :success
  end

end
