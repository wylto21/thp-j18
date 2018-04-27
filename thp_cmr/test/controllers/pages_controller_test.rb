require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get yvan" do
    get pages_yvan_url
    assert_response :success
  end

  test "should get thp_cmr" do
    get pages_thp_cmr_url
    assert_response :success
  end

end
