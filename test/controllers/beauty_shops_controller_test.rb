require 'test_helper'

class BeautyShopsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get beauty_shops_index_url
    assert_response :success
  end

  test "should get show" do
    get beauty_shops_show_url
    assert_response :success
  end

end
